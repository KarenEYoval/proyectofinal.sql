CREATE DATABASE IF NOT EXISTS base_de_datos; 
USE base_de_datos; 

CREATE TABLE IF NOT EXISTS Alumnos ( 
    Matricula VARCHAR(50) PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(100), 
    Edad INT 
); 

-- Tabla de Carreras ---

CREATE TABLE IF NOT EXISTS Carreras ( 
    CodigoCarrera INT PRIMARY KEY, 
    NombreCarrera VARCHAR(100), 
    Descripcion VARCHAR(55) 
); 

-- Tabla de Materias --- 

CREATE TABLE IF NOT EXISTS Materias ( 
    CodigoMateria INT PRIMARY KEY, 
    NombreMateria VARCHAR(100), 
    Descripcion VARCHAR(55), 
    Creditos INT, 
    Bloque INT, 
    CodigoCarrera INT
); 

-- Tabla de AreasDeFormacion ---

CREATE TABLE IF NOT EXISTS AreasDeFormacion ( 
    CodigoArea INT PRIMARY KEY, 
    NombreArea VARCHAR(100) 
); 


-- Tabla de PeriodosEscolares ---
 
CREATE TABLE IF NOT EXISTS PeriodosEscolares ( 
    CodigoPeriodo INT PRIMARY KEY, 
    NombrePeriodo VARCHAR(50), 
    FechaInicio DATE, 
    FechaFin DATE 
); 



-- Tabla de Profesores ---

CREATE TABLE IF NOT EXISTS Profesores ( 
    NumeroPersonal INT PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(100), 
    GradoEstudios VARCHAR(50) 
); 



-- Insertar datos en la tabla Alumnos ----

INSERT INTO Alumnos (Matricula, Nombre, ApellidoPaterno, ApellidoMaterno, Email, Edad)
VALUES 
    ('zS22016126', 'Karen', 'Lopez', 'Yoval', 'karenyoval26@jamil.com', 19),
    ('zS22016236', 'Harry', 'Eduard', 'Styles', 'styles@example.com', 19),
    ('zS22633654', 'Taylor', 'Alison', 'Swift', 'taylor13@example.com', 22),
    ('zS22856985', 'Sebastian', 'González', 'Ramírez', 'elena@example.com', 19),
    ('zS22638754', 'Norma', 'Pérez', 'García', 'daniel@example.com', 19),
    ('zS22445478', 'Isaid', 'Ochoa', 'Tadeo', 'isaid@example.com', 22),
    ('zS22016123', 'Winnie', 'the', 'Pooh', 'winnie@example.com', 21),
    ('zS22016783', 'Jose', 'Lopez', 'Iniguez', 'jose@example.com', 25),
    ('zS22016589', 'Joselyn', 'Fernandez', 'Lopez', 'joss@example.com', 19),
    ('zS22016128', 'Zack', 'Efron', 'Lopez', 'zack@exmple.com', 19);



-- Insertar datos en la tabla Carreras ----
INSERT INTO Carreras (CodigoCarrera, NombreCarrera, Descripcion)
VALUES 
    (111, 'LIS', 'Rama de la Ingeniería que estudia el hardware'),
    (222, 'LICIC', 'Encargada de estudiar la administración de métodos'),
    (333, 'LE', 'Almacenar, procesar y transmitir información'),
    (444, 'LRSC', 'Distintas disciplinas'),
    (555, 'LTC', 'Carrera de varios ámbitos');



-- Insertar datos en la tabla Profesores ---

INSERT INTO Profesores (NumeroPersonal, Nombre, Email, GradoEstudios)
VALUES 
    (2284, 'Pedro Martínez', 'pedro@example.com', 'Doctorado'),
    (2285, 'Ana Gómez', 'ana@example.com', 'Maestría'),
    (5586, 'Carlos Sánchez', 'carlos@example.com', 'Licenciatura'),
    (4187, 'Guillermo Humberto', 'guille@example.com', 'Doctorado'),
    (2288, 'Juana Elisa', 'juana@example.com', 'Licenciatura');


-- Llenar tabla Materias ----

INSERT INTO Materias (CodigoMateria, NombreMateria, Descripcion, Creditos, Bloque)
VALUES 
    (1111, 'Computacion basica', 'Conocimientos básicos de computación', 4, 11),
    (2222, 'Matematicas discretas', 'Conocimientos básicos de computación', 5, 22),
    (3333, 'Sistemas Operativos', 'Conocimientos básicos de computación', 6, 33),
    (4444, 'Experiencia recepcional', 'conocimientos adquiridos a lo largo de la carrera', 6, 77),
    (5555, 'Eleccion Libre', 'Actividades recreativas', 4, 2);


-- Llenar tabla AreasDeFormacion----

INSERT INTO AreasDeFormacion (CodigoArea, NombreArea)
VALUES 
    (6, 'Área de Formación básica'),
    (7, 'Iniciacion la disciplina'),
    (8, 'Área de formación terminal'),
    (9, 'Área de formación de elección libre');



---- Insertar datos en la tabla PeriodosEscolares -----

INSERT INTO PeriodosEscolares (CodigoPeriodo, NombrePeriodo, FechaInicio, FechaFin)
VALUES 
    (01, 'Primer', '2018-01-10', '2018-03-20'),
    (02, 'Segundo', '2018-06-01', '2018-09-26'),
    (03, 'Tercer', '2018-02-15', '2018-06-20'),
    (04, 'Cuarto', '2018-09-30', '2018-12-24'),
    (05, 'Quinto', '2019-01-10', '2019-03-20'),
    (06, 'Sexto', '2019-06-20', '2019-09-14'),
    (07, 'Septimo', '2019-12-24', '2020-01-10'),
    (08, 'Octavo', '2020-03-30', '2020-06-27');
