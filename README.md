# Referencias App (Node.js + Astro + MySQL)

## Descripcion general
Referencias App es una aplicacion web para gestionar y generar referencias bibliograficas en multiples formatos academicos.
Permite:
- Registrar referencias de tipo libro, articulo, sitio web y repositorio electronico
- Gestionar autores por referencia con orden de aparicion
- Clasificar referencias por area, asignatura y tema
- Generar citas en formatos APA, IEEE, ACM, Chicago y Harvard
- Administrar usuarios y roles (admin/usuario)
- Filtrar referencias por tipo, año y titulo

## Estructura del proyecto
```text
referencias-app/
├── frontend/                        # Astro + Bootstrap
│   └── src/
│       ├── components/
│       │   └── Navbar.astro
│       ├── layouts/
│       │   ├── Layout.astro         # Layout base con Bootstrap CDN
│       │   └── AppLayout.astro      # Layout con Navbar para paginas privadas
│       ├── pages/
│       │   ├── index.astro          # Redirige a /references
│       │   ├── auth/
│       │   │   ├── login.astro
│       │   │   └── register.astro
│       │   ├── references/
│       │   │   ├── index.astro      # Lista de referencias con filtros
│       │   │   ├── create.astro     # Crear referencia
│       │   │   └── [id]/
│       │   │       ├── index.astro  # Detalle de referencia
│       │   │       └── edit.astro   # Editar referencia
│       │   └── admin/
│       │       └── users.astro      # Gestion de usuarios (solo admin)
│       └── services/                # Llamadas a la API del backend
│           ├── api.js               # URL base y headers comunes
│           ├── auth.service.js
│           ├── references.service.js
│           ├── catalog.service.js
│           ├── formatter.service.js
│           └── users.service.js
└── backend/                         # Node.js + Express + MySQL
    └── src/
        ├── modules/
        │   ├── auth/                # Login y registro
        │   ├── users/               # Gestion de usuarios
        │   ├── references/          # CRUD de referencias
        │   ├── catalog/             # Areas, asignaturas y temas
        │   └── formatter/           # Generacion de citas
        │       └── formats/
        │           ├── apa.js
        │           ├── ieee.js
        │           ├── ACM.js
        │           ├── chicago.js
        │           └── harvard.js
        ├── middlewares/
        │   ├── auth.middleware.js   # Verificacion de JWT
        │   └── role.middleware.js   # Verificacion de rol
        ├── config/
        │   └── db.js                # Pool de conexiones MySQL
        └── app.js                   # Entry point, registro de modulos
```

## Logica del programa

### 1) Autenticacion (`modules/auth`)
- Registro de usuarios con validacion via Zod y encriptacion de contraseña con bcryptjs.
- Login que verifica credenciales y genera un token JWT con id y rol del usuario.
- El token se almacena en `localStorage` del navegador y se envia en el header `Authorization: Bearer <token>` en cada peticion.

### 2) Referencias (`modules/references`)
- CRUD completo de referencias con soporte para multiples tipos.
- Al crear o editar una referencia se usan transacciones SQL para garantizar integridad — si falla cualquier insercion, se hace rollback completo.
- Cada referencia almacena sus campos dinamicos en la tabla `valores_campos_referencia` usando un modelo EAV (Entity-Attribute-Value).
- Soporta filtros por tipo, año y titulo via query parameters.

### 3) Formatter (`modules/formatter`)
- Recibe el id de una referencia y el formato deseado como query parameter.
- Consulta los datos completos de la referencia (campos, autores, tipo).
- Delega la construccion de la cita al archivo de formato correspondiente.
- Cada archivo de formato (`apa.js`, `ieee.js`, etc.) define una funcion por tipo de referencia.

### 4) Catalogo (`modules/catalog`)
- Gestiona la jerarquia de clasificacion: Area → Asignatura → Tema.
- Los selects de asignatura y tema son en cascada — se cargan segun la seleccion anterior.
- Cualquier usuario puede crear nuevas areas, asignaturas y temas desde el formulario de referencias.

### 5) Usuarios (`modules/users`)
- Solo accesible para usuarios con rol `admin`.
- Permite cambiar el rol de cualquier usuario y eliminarlo.
- Los filtros de rol y busqueda se aplican en el frontend sobre los datos ya cargados.

### 6) Middlewares
- `auth.middleware.js`: verifica que el token JWT sea valido antes de procesar la peticion. Si no hay token o es invalido, responde 401.
- `role.middleware.js`: verifica que el rol del usuario tenga permiso para la ruta. Si no, responde 403.

## Base de datos
Archivo SQL con el schema completo disponible en la raiz del proyecto.

Tablas principales:
- `usuarios` — datos de acceso y perfil
- `tipos_referencia` — libro, articulo, sitio_web, repositorio_electronico
- `referencias` — referencia base con titulo, año y tipo
- `autores` — datos de autores
- `referencia_autores` — relacion N:M referencias-autores con orden
- `campos` — catalogo de campos posibles (editorial, url, doi, etc.)
- `tipos_referencia_campos` — que campos aplican a cada tipo y si son obligatorios
- `valores_campos_referencia` — valores de campos por referencia (modelo EAV)
- `areas`, `asignaturas`, `temas` — jerarquia de clasificacion
- `referencia_temas` — relacion N:M referencias-temas

## Configuracion rapida

### 1) Clonar el repositorio
```bash
git clone <url-del-repositorio>
cd referencias-app
```

### 2) Configurar el backend
```bash
cd backend
npm install
```

Crear archivo `.env` en `/backend`:
```
PORT=3000
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=tu_contraseña
DB_NAME=Referencias
JWT_SECRET=tu_clave_secreta
```

### 3) Configurar la base de datos
Crear la base de datos en MySQL y ejecutar el archivo SQL del proyecto.

### 4) Configurar el frontend
```bash
cd frontend
npm install
```

### 5) Correr el proyecto

**Terminal 1 — Backend:**
```bash
cd backend
npm run dev
```

**Terminal 2 — Frontend:**
```bash
cd frontend
npm run dev -- --host
```

Abrir en el navegador: `http://localhost:4321`

## Endpoints de la API

### Auth
| Metodo | Ruta | Descripcion |
|--------|------|-------------|
| POST | `/api/auth/register` | Registrar usuario |
| POST | `/api/auth/login` | Iniciar sesion |

### References
| Metodo | Ruta | Descripcion |
|--------|------|-------------|
| GET | `/api/references` | Obtener referencias del usuario |
| GET | `/api/references/:id` | Obtener referencia por id |
| POST | `/api/references` | Crear referencia |
| PUT | `/api/references/:id` | Editar referencia |
| DELETE | `/api/references/:id` | Eliminar referencia (solo admin) |

### Formatter
| Metodo | Ruta | Descripcion |
|--------|------|-------------|
| GET | `/api/formatter/:id?formato=apa` | Generar cita en el formato indicado |

### Catalog
| Metodo | Ruta | Descripcion |
|--------|------|-------------|
| GET | `/api/catalog/areas` | Obtener areas |
| POST | `/api/catalog/areas` | Crear area |
| GET | `/api/catalog/asignaturas?area_id=1` | Obtener asignaturas por area |
| POST | `/api/catalog/asignaturas` | Crear asignatura |
| GET | `/api/catalog/temas?asignatura_id=1` | Obtener temas por asignatura |
| POST | `/api/catalog/temas` | Crear tema |

### Users (solo admin)
| Metodo | Ruta | Descripcion |
|--------|------|-------------|
| GET | `/api/users` | Obtener todos los usuarios |
| PUT | `/api/users/:id/rol` | Cambiar rol de usuario |
| DELETE | `/api/users/:id` | Eliminar usuario |

## Tecnologias utilizadas
- **Frontend:** Astro 6, Bootstrap 5
- **Backend:** Node.js, Express 5
- **Base de datos:** MySQL con mysql2
- **Autenticacion:** JSON Web Tokens (JWT)
- **Validacion:** Zod
- **Encriptacion:** bcryptjs

## Requisitos
- Node.js v18 o superior
- MySQL 8 o superior
- npm