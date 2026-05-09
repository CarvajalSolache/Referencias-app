USE Referencias;

-- Tabla usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255) NOT NULL UNIQUE,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    contrasena_hash VARCHAR(255) NOT NULL,
    rol ENUM('admin','usuario') NOT NULL,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla tipos_referencia
CREATE TABLE tipos_referencia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre ENUM('libro','articulo','sitio_web','repositorio_electronico') NOT NULL UNIQUE
);

-- Tabla referencias
CREATE TABLE referencias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_referencia_id INT NOT NULL,
    usuario_id INT NOT NULL,
    titulo VARCHAR(500) NOT NULL,
    anio INT CHECK (anio BETWEEN 1000 AND 2100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    publica TINYINT(1) DEFAULT 0,
    FOREIGN KEY (tipo_referencia_id) REFERENCES tipos_referencia(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabla autores
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    segundo_nombre VARCHAR(255),
    apellido VARCHAR(255) NOT NULL,
    credenciales VARCHAR(50)
);

-- Tabla referencia_autores
CREATE TABLE referencia_autores (
    referencia_id INT NOT NULL,
    autor_id INT NOT NULL,
    orden INT NOT NULL DEFAULT 1,
    PRIMARY KEY (referencia_id, autor_id),
    FOREIGN KEY (referencia_id) REFERENCES referencias(id) ON DELETE CASCADE,
    FOREIGN KEY (autor_id) REFERENCES autores(id) ON DELETE CASCADE
);

-- Tabla campos
CREATE TABLE campos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE
);

-- Tabla tipos_referencia_campos
CREATE TABLE tipos_referencia_campos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_referencia_id INT NOT NULL,
    campo_id INT NOT NULL,
    es_obligatorio TINYINT(1) DEFAULT 0,
    UNIQUE(tipo_referencia_id, campo_id),
    FOREIGN KEY (tipo_referencia_id) REFERENCES tipos_referencia(id),
    FOREIGN KEY (campo_id) REFERENCES campos(id)
);

-- Tabla valores_campos_referencia
CREATE TABLE valores_campos_referencia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    referencia_id INT NOT NULL,
    campo_id INT NOT NULL,
    valor TEXT NOT NULL,
    UNIQUE(referencia_id, campo_id),
    FOREIGN KEY (referencia_id) REFERENCES referencias(id) ON DELETE CASCADE,
    FOREIGN KEY (campo_id) REFERENCES campos(id)
);

-- Tabla areas
CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE
);

-- Tabla asignaturas
CREATE TABLE asignaturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    area_id INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    UNIQUE(area_id, nombre),
    FOREIGN KEY (area_id) REFERENCES areas(id)
);

-- Tabla temas
CREATE TABLE temas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    asignatura_id INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    UNIQUE(asignatura_id, nombre),
    FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
);

-- Tabla referencia_temas
CREATE TABLE referencia_temas (
    referencia_id INT NOT NULL,
    tema_id INT NOT NULL,
    PRIMARY KEY (referencia_id, tema_id),
    FOREIGN KEY (referencia_id) REFERENCES referencias(id) ON DELETE CASCADE,
    FOREIGN KEY (tema_id) REFERENCES temas(id) ON DELETE CASCADE
);

-- Datos base
INSERT INTO tipos_referencia (nombre) VALUES
('libro'),
('articulo'),
('sitio_web'),
('repositorio_electronico');

INSERT INTO campos (nombre) VALUES
('editorial'),
('edicion'),
('ciudad_publicacion'),
('pais_publicacion'),
('isbn'),
('volumen'),
('serie'),
('nombre_revista'),
('numero'),
('pagina_inicio'),
('pagina_fin'),
('doi'),
('issn'),
('url'),
('fecha_acceso'),
('nombre_sitio'),
('organizacion'),
('nombre_repositorio'),
('institucion'),
('tipo_documento'),
('numero_reporte');

-- Campos por tipo (libro)
INSERT INTO tipos_referencia_campos (tipo_referencia_id, campo_id, es_obligatorio) VALUES
(1, 1, 1),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0);

-- Campos por tipo (articulo)
INSERT INTO tipos_referencia_campos (tipo_referencia_id, campo_id, es_obligatorio) VALUES
(2, 8, 1),
(2, 6, 1),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0);

-- Campos por tipo (sitio_web)
INSERT INTO tipos_referencia_campos (tipo_referencia_id, campo_id, es_obligatorio) VALUES
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(3, 17, 0);

-- Campos por tipo (repositorio_electronico)
INSERT INTO tipos_referencia_campos (tipo_referencia_id, campo_id, es_obligatorio) VALUES
(4, 14, 1),
(4, 15, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 0),
(4, 12, 0),
(4, 21, 0);