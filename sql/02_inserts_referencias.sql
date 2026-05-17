-- =============================================
-- INSERTS GENERADOS DESDE CSV
-- referencias_app
-- =============================================

USE Referencias;

-- Usuario: Juan
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Juan', 'juan@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Juan');

INSERT IGNORE INTO areas (nombre) VALUES ('Informatica');
INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Bases de Datos');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Modelado de datos');

-- Referencia: Database System Concepts
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'Database System Concepts', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Abraham', 'Silberschatz');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Abraham' AND apellido = 'Silberschatz'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 1, 'McGraw-Hill');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 3, 'New York');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 5, '978-0078022159');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Database System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Modelado de datos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'SQL');

-- Referencia: Learning SQL
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'Learning SQL', 2009, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Alan', 'Beaulieu');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Alan' AND apellido = 'Beaulieu'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 1, 'O''Reilly');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 3, 'Sebastopol');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 5, '978-0596520830');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Learning SQL' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'SQL' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'NoSQL');

-- Referencia: A Comparison of NoSQL Database Management Systems
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'A Comparison of NoSQL Database Management Systems', 2018, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Stefan', 'Edlich');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Stefan' AND apellido = 'Edlich'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 8, 'IEEE Transactions on Knowledge and Data Engineering');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 6, '10');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 9, '3');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 12, '10.1109/TKDE.2018.2841410');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Comparison of NoSQL Database Management Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'NoSQL' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: W3Schools SQL Tutorial
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'W3Schools SQL Tutorial', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'W3Schools SQL Tutorial' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 14, 'https://www.w3schools.com/sql');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'W3Schools SQL Tutorial' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'W3Schools SQL Tutorial' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 16, 'W3Schools');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'W3Schools SQL Tutorial' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'SQL' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Normalizacion');

-- Referencia: Fundamentals of Database Systems
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'Fundamentals of Database Systems', 2015, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Ramez', 'Elmasri');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Ramez' AND apellido = 'Elmasri'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 1, 'Pearson');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 3, 'New Jersey');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 5, '978-0133970777');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Fundamentals of Database Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Normalizacion' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Entity-Relationship Model
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com'), 'Entity-Relationship Model', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Peter', 'Chen');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Entity-Relationship Model' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Peter' AND apellido = 'Chen'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Entity-Relationship Model' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 15, 'https://arxiv.org/abs/2001.00001');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Entity-Relationship Model' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Entity-Relationship Model' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), 19, 'MIT');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Entity-Relationship Model' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'juan@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Modelado de datos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Bases de Datos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Maria
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Maria', 'maria@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Maria');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Programacion');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Algoritmos');

-- Referencia: Introduction to Algorithms
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Introduction to Algorithms', 2022, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Thomas', 'Cormen');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Thomas' AND apellido = 'Cormen'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 1, 'MIT Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 5, '978-0262046305');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Introduction to Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Algoritmos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Python');

-- Referencia: Python Crash Course
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Python Crash Course', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Eric', 'Matthes');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Eric' AND apellido = 'Matthes'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 1, 'No Starch Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 3, 'San Francisco');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 5, '978-1593279288');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Crash Course' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Python' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Patrones de diseno');

-- Referencia: Design Patterns in Modern Software
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Design Patterns in Modern Software', 2021, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Gang', 'Chen');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Gang' AND apellido = 'Chen'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 8, 'IEEE Software');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 6, '38');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 9, '2');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 12, '10.1109/MS.2021.3049202');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns in Modern Software' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Patrones de diseno' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Python Official Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Python Official Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Official Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 14, 'https://docs.python.org');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Official Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Official Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 16, 'Python.org');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Python Official Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Python' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Estructuras de datos');

-- Referencia: Data Structures and Algorithm Analysis
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Data Structures and Algorithm Analysis', 2013, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Mark', 'Weiss');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Mark' AND apellido = 'Weiss'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 1, 'Pearson');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 3, 'New Jersey');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 5, '978-0132847377');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Data Structures and Algorithm Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Estructuras de datos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Sorting Algorithms Comparison
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com'), 'Sorting Algorithms Comparison', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Donald', 'Knuth');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Sorting Algorithms Comparison' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Donald' AND apellido = 'Knuth'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Sorting Algorithms Comparison' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 15, 'https://arxiv.org/abs/1902.00001');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Sorting Algorithms Comparison' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Sorting Algorithms Comparison' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), 19, 'Stanford University');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Sorting Algorithms Comparison' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'maria@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Algoritmos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Programacion' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Carlos
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Carlos', 'carlos@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Carlos');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Redes');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Protocolos');

-- Referencia: Computer Networks
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'Computer Networks', 2021, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Andrew', 'Tanenbaum');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Andrew' AND apellido = 'Tanenbaum'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 1, 'Pearson');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 3, 'Amsterdam');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 4, 'Paises Bajos');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 5, '978-0132126953');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Networks' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Protocolos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'TCP/IP');

-- Referencia: TCP/IP Illustrated
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'TCP/IP Illustrated', 2011, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Richard', 'Stevens');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Richard' AND apellido = 'Stevens'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 1, 'Addison-Wesley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 3, 'Boston');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 5, '978-0321336316');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'TCP/IP Illustrated' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'TCP/IP' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Seguridad');

-- Referencia: Network Security Protocols Analysis
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'Network Security Protocols Analysis', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Bruce', 'Schneier');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Bruce' AND apellido = 'Schneier'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 8, 'Communications of the ACM');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 6, '63');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 9, '4');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 12, '10.1145/3386012');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Security Protocols Analysis' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Seguridad' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: RFC Editor
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'RFC Editor', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RFC Editor' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 14, 'https://www.rfc-editor.org');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RFC Editor' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RFC Editor' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 16, 'RFC Editor');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'RFC Editor' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Protocolos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: A Survey on Network Security
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'A Survey on Network Security', 2021, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('William', 'Stallings');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey on Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'William' AND apellido = 'Stallings'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey on Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 15, 'https://arxiv.org/abs/2103.00001');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey on Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey on Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 19, 'George Mason University');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey on Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Seguridad' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Network Warrior
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com'), 'Network Warrior', 2011, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Gary', 'Donahue');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Gary' AND apellido = 'Donahue'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 1, 'O''Reilly');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 3, 'Sebastopol');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), 5, '978-1449387860');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Network Warrior' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'carlos@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'TCP/IP' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Redes' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Ana
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Ana', 'ana@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Ana');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Ingenieria de Software');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Metodologias');

-- Referencia: The Pragmatic Programmer
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com'), 'The Pragmatic Programmer', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('David', 'Thomas');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'David' AND apellido = 'Thomas'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 1, 'Addison-Wesley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 3, 'Boston');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 5, '978-0135957059');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Pragmatic Programmer' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Metodologias' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Patrones de diseno');

-- Referencia: Design Patterns
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com'), 'Design Patterns', 1994, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Erich', 'Gamma');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Erich' AND apellido = 'Gamma'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 1, 'Addison-Wesley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 3, 'Boston');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 5, '978-0201633610');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Patrones de diseno' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Metodologias agiles');

-- Referencia: Agile Software Development Manifesto Study
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com'), 'Agile Software Development Manifesto Study', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Kent', 'Beck');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Kent' AND apellido = 'Beck'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 8, 'IEEE Software');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 6, '36');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 9, '1');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 12, '10.1109/MS.2018.2883468');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Software Development Manifesto Study' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Metodologias agiles' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Agile Alliance
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com'), 'Agile Alliance', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Alliance' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 14, 'https://www.agilealliance.org');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Alliance' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Alliance' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 16, 'Agile Alliance');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Agile Alliance' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Metodologias agiles' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Calidad de software');

-- Referencia: Software Quality Metrics
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com'), 'Software Quality Metrics', 2022, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Watts', 'Humphrey');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Software Quality Metrics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Watts' AND apellido = 'Humphrey'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Software Quality Metrics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 15, 'https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=513817');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Software Quality Metrics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 18, 'SEI');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Software Quality Metrics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), 19, 'Carnegie Mellon University');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Software Quality Metrics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'ana@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Calidad de software' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Ingenieria de Software' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Luis
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Luis', 'luis@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Luis');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Sistemas Operativos');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Procesos');

-- Referencia: Modern Operating Systems
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'Modern Operating Systems', 2014, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Andrew' AND apellido = 'Tanenbaum'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 1, 'Pearson');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 3, 'Amsterdam');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 4, 'Paises Bajos');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 5, '978-0133591620');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Operating Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Procesos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Linux');

-- Referencia: The Linux Command Line
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'The Linux Command Line', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('William', 'Shotts');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'William' AND apellido = 'Shotts'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 1, 'No Starch Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 3, 'San Francisco');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 5, '978-1593279523');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Linux Command Line' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Linux' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Virtualizacion');

-- Referencia: Virtualization and Cloud Computing
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'Virtualization and Cloud Computing', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Vmware', 'Research');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Vmware' AND apellido = 'Research'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 8, 'IEEE Transactions on Cloud Computing');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 6, '8');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 9, '2');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 12, '10.1109/TCC.2020.2969986');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Virtualization and Cloud Computing' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Virtualizacion' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Linux Kernel Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'Linux Kernel Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Linux Kernel Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 14, 'https://www.kernel.org/doc');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Linux Kernel Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Linux Kernel Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 16, 'The Linux Kernel');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Linux Kernel Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Linux' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: OS Scheduling Algorithms
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'OS Scheduling Algorithms', 2021, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'OS Scheduling Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Abraham' AND apellido = 'Silberschatz'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OS Scheduling Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 15, 'https://arxiv.org/abs/2104.00001');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OS Scheduling Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OS Scheduling Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 19, 'Yale University');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'OS Scheduling Algorithms' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Procesos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Memoria');

-- Referencia: Operating System Concepts
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com'), 'Operating System Concepts', 2018, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Abraham' AND apellido = 'Silberschatz'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 1, 'Wiley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 3, 'Hoboken');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), 5, '978-1119320913');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Operating System Concepts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'luis@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Memoria' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Sistemas Operativos' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Sofia
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Sofia', 'sofia@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Sofia');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Inteligencia Artificial');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Machine Learning');

-- Referencia: Pattern Recognition and Machine Learning
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'Pattern Recognition and Machine Learning', 2006, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Christopher', 'Bishop');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Christopher' AND apellido = 'Bishop'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 1, 'Springer');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 3, 'New York');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 5, '978-0387310732');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Pattern Recognition and Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Machine Learning' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Redes neuronales');

-- Referencia: Deep Learning
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'Deep Learning', 2016, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Ian', 'Goodfellow');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Ian' AND apellido = 'Goodfellow'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 1, 'MIT Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 5, '978-0262035613');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Deep Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Redes neuronales' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Attention Is All You Need
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'Attention Is All You Need', 2017, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Ashish', 'Vaswani');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Attention Is All You Need' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Ashish' AND apellido = 'Vaswani'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Attention Is All You Need' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 8, 'Neural Information Processing Systems');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Attention Is All You Need' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 6, '30');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Attention Is All You Need' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 12, '10.48550/arXiv.1706.03762');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Attention Is All You Need' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Redes neuronales' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: TensorFlow Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'TensorFlow Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TensorFlow Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 14, 'https://www.tensorflow.org/docs');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TensorFlow Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'TensorFlow Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 16, 'TensorFlow');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'TensorFlow Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Machine Learning' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: ImageNet Large Scale Visual Recognition Challenge
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'ImageNet Large Scale Visual Recognition Challenge', 2015, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Olga', 'Russakovsky');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'ImageNet Large Scale Visual Recognition Challenge' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Olga' AND apellido = 'Russakovsky'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'ImageNet Large Scale Visual Recognition Challenge' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 15, 'https://arxiv.org/abs/1409.0575');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'ImageNet Large Scale Visual Recognition Challenge' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'ImageNet Large Scale Visual Recognition Challenge' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 19, 'Stanford University');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'ImageNet Large Scale Visual Recognition Challenge' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Machine Learning' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Hands-On Machine Learning
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com'), 'Hands-On Machine Learning', 2022, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Aurelien', 'Geron');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Aurelien' AND apellido = 'Geron'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 1, 'O''Reilly');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 3, 'Sebastopol');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), 5, '978-1098125974');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Hands-On Machine Learning' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'sofia@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Machine Learning' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Inteligencia Artificial' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Pedro
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Pedro', 'pedro@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Pedro');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Seguridad Informatica');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Criptografia');

-- Referencia: Cryptography and Network Security
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'Cryptography and Network Security', 2017, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'William' AND apellido = 'Stallings'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 1, 'Pearson');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 3, 'New Jersey');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 5, '978-0134444284');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cryptography and Network Security' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Criptografia' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Hacking etico');

-- Referencia: The Web Application Hacker's Handbook
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'The Web Application Hacker''s Handbook', 2011, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Dafydd', 'Stuttard');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Dafydd' AND apellido = 'Stuttard'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 1, 'Wiley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 3, 'Indianapolis');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 5, '978-1118026472');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Web Application Hacker''s Handbook' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Hacking etico' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: A Survey of Cryptographic Techniques
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'A Survey of Cryptographic Techniques', 2019, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Whitfield', 'Diffie');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Whitfield' AND apellido = 'Diffie'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 8, 'IEEE Security and Privacy');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 6, '17');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 9, '3');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 12, '10.1109/MSEC.2019.2893112');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'A Survey of Cryptographic Techniques' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Criptografia' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Vulnerabilidades');

-- Referencia: OWASP Foundation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'OWASP Foundation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OWASP Foundation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 14, 'https://owasp.org');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OWASP Foundation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'OWASP Foundation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 16, 'OWASP');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'OWASP Foundation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Vulnerabilidades' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Penetration Testing Framework
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'Penetration Testing Framework', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Georgia', 'Weidman');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Penetration Testing Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Georgia' AND apellido = 'Weidman'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Penetration Testing Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 15, 'https://github.com/Weidman/ptf');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Penetration Testing Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 18, 'GitHub');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Penetration Testing Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 19, 'Independent');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Penetration Testing Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Hacking etico' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Applied Cryptography
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com'), 'Applied Cryptography', 2015, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Bruce' AND apellido = 'Schneier'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 1, 'Wiley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 3, 'Indianapolis');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), 5, '978-1119096726');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Applied Cryptography' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'pedro@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Criptografia' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Seguridad Informatica' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Rosa
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Rosa', 'rosa@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Rosa');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Desarrollo Web');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Frontend');

-- Referencia: JavaScript: The Good Parts
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'JavaScript: The Good Parts', 2008, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Douglas', 'Crockford');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Douglas' AND apellido = 'Crockford'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 1, 'O''Reilly');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 3, 'Sebastopol');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 5, '978-0596517748');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'JavaScript: The Good Parts' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Frontend' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Backend');

-- Referencia: Node.js Design Patterns
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'Node.js Design Patterns', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Mario', 'Casciaro');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Mario' AND apellido = 'Casciaro'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 1, 'Packt');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 3, 'Birmingham');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 4, 'Reino Unido');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 5, '978-1839214110');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Node.js Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Backend' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'APIs');

-- Referencia: REST API Design Patterns
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'REST API Design Patterns', 2021, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Roy', 'Fielding');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Roy' AND apellido = 'Fielding'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 8, 'ACM Transactions on the Web');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 6, '15');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 9, '2');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 12, '10.1145/3456789');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'REST API Design Patterns' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'APIs' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: MDN Web Docs
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'MDN Web Docs', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'MDN Web Docs' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 14, 'https://developer.mozilla.org');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'MDN Web Docs' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'MDN Web Docs' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 16, 'Mozilla Developer Network');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'MDN Web Docs' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Frontend' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: React Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'React Documentation', 2024, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Meta', 'Open Source');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'React Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Meta' AND apellido = 'Open Source'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'React Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 15, 'https://react.dev');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'React Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 18, 'React.dev');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'React Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 19, 'Meta');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'React Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Frontend' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Clean Code
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com'), 'Clean Code', 2008, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Robert', 'Martin');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Robert' AND apellido = 'Martin'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 1, 'Prentice Hall');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 3, 'Upper Saddle River');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), 5, '978-0132350884');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Clean Code' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'rosa@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Backend' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Desarrollo Web' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Miguel
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Miguel', 'miguel@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Miguel');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Arquitectura de Computadoras');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Procesadores');

-- Referencia: Computer Organization and Design
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'Computer Organization and Design', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('David', 'Patterson');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'David' AND apellido = 'Patterson'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 1, 'Morgan Kaufmann');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 5, '978-0128203316');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Computer Organization and Design' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Procesadores' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Circuitos');

-- Referencia: Digital Design and Computer Architecture
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'Digital Design and Computer Architecture', 2012, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('David', 'Harris');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'David' AND apellido = 'Harris'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 1, 'Morgan Kaufmann');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 5, '978-0123944245');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Digital Design and Computer Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Circuitos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: The Case for RISC
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'The Case for RISC', 2019, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'David' AND apellido = 'Patterson'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 8, 'ACM SIGARCH Computer Architecture News');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 6, '47');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 9, '1');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 12, '10.1145/3310273');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Case for RISC' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Procesadores' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Intel Developer Zone
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'Intel Developer Zone', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Intel Developer Zone' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 14, 'https://www.intel.com/developer');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Intel Developer Zone' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Intel Developer Zone' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 16, 'Intel Developer Zone');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Intel Developer Zone' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Procesadores' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'RISC-V');

-- Referencia: RISC-V Instruction Set Manual
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'RISC-V Instruction Set Manual', 2021, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Andrew', 'Waterman');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'RISC-V Instruction Set Manual' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Andrew' AND apellido = 'Waterman'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RISC-V Instruction Set Manual' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 15, 'https://riscv.org/technical/specifications');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RISC-V Instruction Set Manual' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 18, 'RISC-V International');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'RISC-V Instruction Set Manual' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 19, 'UC Berkeley');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'RISC-V Instruction Set Manual' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'RISC-V' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: The Art of Electronics
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com'), 'The Art of Electronics', 2015, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Paul', 'Horowitz');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Paul' AND apellido = 'Horowitz'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 1, 'Cambridge University Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 4, 'Reino Unido');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), 5, '978-0521809269');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'The Art of Electronics' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'miguel@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Circuitos' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Arquitectura de Computadoras' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Laura
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Laura', 'laura@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Laura');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Compiladores');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Analisis lexico');

-- Referencia: Compilers: Principles Techniques and Tools
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'Compilers: Principles Techniques and Tools', 2006, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Alfred', 'Aho');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Alfred' AND apellido = 'Aho'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 1, 'Addison-Wesley');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 3, 'Boston');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 5, '978-0321486813');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Compilers: Principles Techniques and Tools' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Analisis lexico' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Gramaticas');

-- Referencia: Engineering a Compiler
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'Engineering a Compiler', 2011, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Keith', 'Cooper');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Keith' AND apellido = 'Cooper'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 1, 'Morgan Kaufmann');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 5, '978-0120884780');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Engineering a Compiler' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Gramaticas' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Optimizacion');

-- Referencia: LLVM A Compilation Framework
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'LLVM A Compilation Framework', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Chris', 'Lattner');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Chris' AND apellido = 'Lattner'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 8, 'ACM Transactions on Programming Languages');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 6, '42');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 9, '3');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 12, '10.1145/3385412');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM A Compilation Framework' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Optimizacion' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'LLVM');

-- Referencia: LLVM Project Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'LLVM Project Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM Project Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 14, 'https://llvm.org/docs');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM Project Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM Project Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 16, 'LLVM Project');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'LLVM Project Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'LLVM' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Parsing Techniques Survey
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'Parsing Techniques Survey', 2020, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Dick', 'Grune');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Parsing Techniques Survey' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Dick' AND apellido = 'Grune'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Parsing Techniques Survey' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 15, 'https://arxiv.org/abs/2001.12345');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Parsing Techniques Survey' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 18, 'arXiv');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Parsing Techniques Survey' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 19, 'Vrije Universiteit');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Parsing Techniques Survey' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Gramaticas' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Modern Compiler Implementation in Java
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com'), 'Modern Compiler Implementation in Java', 2002, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Andrew', 'Appel');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Andrew' AND apellido = 'Appel'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 1, 'Cambridge University Press');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 3, 'Cambridge');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 4, 'Reino Unido');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), 5, '978-0521820608');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Modern Compiler Implementation in Java' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'laura@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Analisis lexico' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Compiladores' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

-- Usuario: Andres
INSERT IGNORE INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre) VALUES ('Andres', 'andres@ejemplo.com', '$2b$10$TUtG.tThsTR55nGdzqYM9uMuOJxXnBIlGYfMBM0eMHMojBsZl6GCO', 'usuario', 'Andres');

INSERT IGNORE INTO asignaturas (area_id, nombre) VALUES ((SELECT id FROM areas WHERE nombre = 'Informatica'), 'Computacion en la Nube');
INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Arquitectura');

-- Referencia: Cloud Computing: Concepts Technology and Architecture
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Cloud Computing: Concepts Technology and Architecture', 2013, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Thomas', 'Erl');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Thomas' AND apellido = 'Erl'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 1, 'Prentice Hall');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 3, 'New Jersey');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 5, '978-0133387520');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Cloud Computing: Concepts Technology and Architecture' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Arquitectura' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Docker');

-- Referencia: Docker Deep Dive
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Docker Deep Dive', 2023, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Nigel', 'Poulton');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Deep Dive' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Nigel' AND apellido = 'Poulton'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Deep Dive' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 1, 'Independently Published');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Deep Dive' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 5, '978-1521822807');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Deep Dive' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Docker' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));

INSERT IGNORE INTO temas (asignatura_id, nombre) VALUES ((SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica')), 'Kubernetes');

-- Referencia: Kubernetes and Cloud Native Applications
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (2, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Kubernetes and Cloud Native Applications', 2022, 1);
INSERT IGNORE INTO autores (nombre, apellido) VALUES ('Brendan', 'Burns');
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Brendan' AND apellido = 'Burns'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 8, 'IEEE Internet Computing');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 6, '26');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 9, '1');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 12, '10.1109/MIC.2022.3140179');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes and Cloud Native Applications' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Kubernetes' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Docker Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (3, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Docker Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 14, 'https://docs.docker.com');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 16, 'Docker Inc');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Docker Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Docker' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Kubernetes Documentation
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (4, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Kubernetes Documentation', 2024, 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 14, 'https://kubernetes.io/docs');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 15, '2024-05-01');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 18, 'Cloud Native Computing Foundation');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Kubernetes Documentation' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Kubernetes' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));


-- Referencia: Designing Distributed Systems
INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (1, (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com'), 'Designing Distributed Systems', 2018, 1);
INSERT IGNORE INTO referencia_autores (referencia_id, autor_id, orden) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM autores WHERE nombre = 'Brendan' AND apellido = 'Burns'), 1);
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 1, 'O''Reilly');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 3, 'Sebastopol');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 4, 'EUA');
INSERT IGNORE INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), 5, '978-1491983645');
INSERT IGNORE INTO referencia_temas (referencia_id, tema_id) VALUES ((SELECT id FROM referencias WHERE titulo = 'Designing Distributed Systems' AND usuario_id = (SELECT id FROM usuarios WHERE correo_electronico = 'andres@ejemplo.com')), (SELECT id FROM temas WHERE nombre = 'Arquitectura' AND asignatura_id = (SELECT id FROM asignaturas WHERE nombre = 'Computacion en la Nube' AND area_id = (SELECT id FROM areas WHERE nombre = 'Informatica'))));
