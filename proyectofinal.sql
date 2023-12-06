CREATE DATABASE IF NOT EXISTS base_de_datos; 
USE base_de_datos; 

CREATE TABLE IF NOT EXISTS Alumnos ( 
    Matricula INT UNSIGNED PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(50), 
    Edad INT 
); 

CREATE TABLE IF NOT EXISTS Carreras ( 
    CodigoCarrera INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NombreCarrera VARCHAR(100), 
    Descripcion VARCHAR(55) 
); 

CREATE TABLE IF NOT EXISTS Materias ( 
    CodigoMateria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NombreMateria VARCHAR(100), 
    Descripcion VARCHAR(55), 
    Creditos INT, 
    Bloque INT, 
    CodigoCarrera INT
); 


CREATE TABLE IF NOT EXISTS AreasDeFormacion ( 
    CodigoArea INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NombreArea VARCHAR(100) 
); 

CREATE TABLE IF NOT EXISTS PeriodosEscolares ( 
    CodigoPeriodo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NombrePeriodo VARCHAR(50), 
    FechaInicio DATE, 
    FechaFin DATE 
); 

CREATE TABLE IF NOT EXISTS Profesores ( 
    NumeroPersonal INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(50), 
    ApellidoPaterno VARCHAR(50), 
    ApellidoMaterno VARCHAR(50), 
    Email VARCHAR(100), 
    GradoEstudios VARCHAR(50) 
); 


INSERT INTO Alumnos (Matricula, Nombre, ApellidoPaterno, ApellidoMaterno, Email, Edad)
VALUES 
    (123, 'Karen', 'Lopez', 'Yoval', 'karenyoval26@jamil.com', 19),
    (222, 'Harry', 'Eduard', 'Styles', 'styles@example.com', 19),
    (333, 'Taylor', 'Alison', 'Swift', 'taylor13@example.com', 22),
    (444, 'Sebastian', 'González', 'Ramírez', 'elena@example.com', 19),
    (555, 'Norma', 'Pérez', 'García', 'daniel@example.com', 19),
    (666, 'Isaid', 'Ochoa', 'Tadeo', 'isaid@example.com', 22),
    (777, 'Winnie', 'the', 'Pooh', 'winnie@example.com', 21),
    (888, 'Jose', 'Lopez', 'Iniguez', 'jose@example.com', 25),
    (999, 'Joselyn', 'Fernandez', 'Lopez', 'joss@example.com', 19),
    (101, 'Zack', 'Efron', 'Lopez', 'zack@exmple.com', 19);


INSERT INTO Carreras (CodigoCarrera, NombreCarrera, Descripcion)
VALUES 
    (1, 'LIS', 'Rama de la Ingeniería que estudia el hardware'),
    (2, 'LICIC', 'Encargada de estudiar la administración de métodos'),
    (3, 'LE', 'Almacenar, procesar y transmitir información'),
    (4, 'LRSC', 'Distintas disciplinas'),
    (5, 'LTC', 'Carrera de varios ámbitos');



INSERT INTO Profesores (NumeroPersonal, Nombre, Email, GradoEstudios)
VALUES 
    (9284, 'Pedro Martínez', 'pedro@example.com', 'Doctorado'),
    (8285, 'Ana Gómez', 'ana@example.com', 'Maestría'),
    (7586, 'Carlos Sánchez', 'carlos@example.com', 'Licenciatura'),
    (6187, 'Guillermo Humberto', 'guille@example.com', 'Doctorado'),
    (7288, 'Juana Elisa', 'juana@example.com', 'Licenciatura');

INSERT INTO Materias (CodigoMateria, NombreMateria, Descripcion, Creditos, Bloque)
VALUES 
    (1112, 'Computacion basica', 'Conocimientos básicos de computación', 4, 11),
    (2223, 'Matematicas discretas', 'Conocimientos básicos de computación', 5, 22),
    (3334, 'Sistemas Operativos', 'Conocimientos básicos de computación', 6, 33),
    (4445, 'Experiencia recepcional', 'conocimientos adquiridos a lo largo de la carrera', 6, 77),
    (5556, 'Eleccion Libre', 'Actividades recreativas', 4, 2);

INSERT INTO AreasDeFormacion (CodigoArea, NombreArea)
VALUES 
    (50, 'Area diciplinar'),
    (60, 'Área de Formación básica'),
    (70, 'Iniciacion la disciplina'),
    (80, 'Área de formación terminal'),
    (90, 'Área de formación de elección libre');


INSERT INTO PeriodosEscolares (CodigoPeriodo, NombrePeriodo, FechaInicio, FechaFin)
VALUES 
    (0101, 'Primer', '2018-01-10', '2018-03-20'),
    (0202, 'Segundo', '2018-06-01', '2018-09-26'),
    (0303, 'Tercer', '2018-02-15', '2018-06-20'),
    (0404, 'Cuarto', '2018-09-30', '2018-12-24'),
    (0505, 'Quinto', '2019-01-10', '2019-03-20'),
    (0606, 'Sexto', '2019-06-20', '2019-09-14'),
    (0707, 'Septimo', '2019-12-24', '2020-01-10'),
    (0808, 'Octavo', '2020-03-30', '2020-06-27');
