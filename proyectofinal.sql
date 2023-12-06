CREATE DATABASE IF NOT EXISTS base_de_datos; 
USE base_de_datos; 

CREATE TABLE IF NOT EXISTS Alumno ( 
    Matricula INT UNSIGNED PRIMARY KEY, 
    nombres VARCHAR(50), 
    paterno VARCHAR(50), 
    materno VARCHAR(50), 
    email VARCHAR(50), 
    edad INT 
); 

CREATE TABLE IF NOT EXISTS Cursa (
    Matricula INT UNSIGNED,
    NCR INT UNSIGNED,
    Calificacion FLOAT,
    FOREIGN KEY (Matricula) REFERENCES Alumnos(Matricula),
    FOREIGN KEY (NCR) REFERENCES Oferta(NCR)
);


CREATE TABLE IF NOT EXISTS Carrera ( 
    CodigoCarrera INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    nombreCarrera VARCHAR(100), 
    descripcion VARCHAR(55) 
); 

CREATE TABLE IF NOT EXISTS Materia (
    CodigoMateria INT UNSIGNED PRIMARY KEY,
    CodigoCarrera INT UNSIGNED,
    CodigoArea INT UNSIGNED,
    NombreMateria VARCHAR(100),
    Descripcion VARCHAR(55),
    Creditos INT,
    Bloque INT,
    FOREIGN KEY (CodigoCarrera) REFERENCES Carreras(CodigoCarrera),
    FOREIGN KEY (CodigoArea) REFERENCES AreasDeFormacion(CodigoArea)
);



CREATE TABLE IF NOT EXISTS Area ( 
    CodArea INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100) 
); 

CREATE TABLE IF NOT EXISTS Periodos ( 
    CodPeriodo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NombrePeriodo VARCHAR(50), 
    FechaInicio DATE, 
    FechaFin DATE 
); 

CREATE TABLE IF NOT EXISTS Profesor ( 
    numeroPersonal INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(50), 
    paterno VARCHAR(50), 
    materno VARCHAR(50), 
    Email VARCHAR(100), 
    licenciatura VARCHAR(50) 
    maestria VARCHAR(50)
    doctorado VARCHAR(50)
); 


CREATE TABLE IF NOT EXISTS Oferta (
    NCR INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CodigoMateria INT UNSIGNED,
    NumeroPersonal INT UNSIGNED,
    CodigoPeriodo INT UNSIGNED,
    FOREIGN KEY (CodigoMateria) REFERENCES Materias(CodigoMateria),
    FOREIGN KEY (NumeroPersonal) REFERENCES Profesores(NumeroPersonal),
    FOREIGN KEY (CodigoPeriodo) REFERENCES PeriodosEscolares(CodigoPeriodo)
);






INSERT INTO AlumnoS (Matricula, Nombre, ApellidoPaterno, ApellidoMaterno, Email, Edad)
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


INSERT INTO Carrera (CodigoCarrera, NombreCarrera, Descripcion)
VALUES 
    (1, 'LIS', 'Rama de la Ingeniería que estudia el hardware'),
    (2, 'LICIC', 'Encargada de estudiar la administración de métodos'),
    (3, 'LE', 'Almacenar, procesar y transmitir información'),
    (4, 'LRSC', 'Distintas disciplinas'),
    (5, 'LTC', 'Carrera de varios ámbitos');



INSERT INTO Profesor (NumeroPersonal, Nombre, Email, GradoEstudios)
VALUES 
    (9284, 'Pedro Martínez', 'pedro@example.com', 'Doctorado'),
    (8285, 'Ana Gómez', 'ana@example.com', 'Maestría'),
    (7586, 'Carlos Sánchez', 'carlos@example.com', 'Licenciatura'),
    (6187, 'Guillermo Humberto', 'guille@example.com', 'Doctorado'),
    (7288, 'Juana Elisa', 'juana@example.com', 'Licenciatura');


INSERT INTO Materia (CodigoMateria, CodigoCarrera, CodigoArea, NombreMateria, Descripcion, Creditos, Bloque)
VALUES 
    (1, 1, 50, 'Introducción a la Informática', 'Conceptos básicos de computación', 4, 11),
    (2, 1, 60, 'Estructuras de Datos', 'Manejo y organización de datos', 5, 22),
    (3, 2, 70, 'Gestión Empresarial', 'Fundamentos de administración de empresas', 6, 33),
    (4, 2, 80, 'Contabilidad Financiera', 'Registro y análisis de transacciones financieras', 6, 77),
    (5, 3, 90, 'Historia del Arte', 'Exploración de movimientos artísticos', 4, 2);




INSERT INTO Area (CodigoArea, NombreArea)
VALUES 
    (50, 'Area diciplinar'),
    (60, 'Área de Formación básica'),
    (70, 'Iniciacion la disciplina'),
    (80, 'Área de formación terminal'),
    (90, 'Área de formación de elección libre');


INSERT INTO Periodo (CodigoPeriodo, NombrePeriodo, FechaInicio, FechaFin)
VALUES 
    (0101, 'Primer', '2018-01-10', '2018-03-20'),
    (0202, 'Segundo', '2018-06-01', '2018-09-26'),
    (0303, 'Tercer', '2018-02-15', '2018-06-20'),
    (0404, 'Cuarto', '2018-09-30', '2018-12-24'),
    (0505, 'Quinto', '2019-01-10', '2019-03-20'),
    (0606, 'Sexto', '2019-06-20', '2019-09-14'),
    (0707, 'Septimo', '2019-12-24', '2020-01-10'),
    (0808, 'Octavo', '2020-03-30', '2020-06-27');

INSERT INTO Cursa (Matricula, NCR, Calificacion)
VALUES 
    (123, 1, 9.5),
    (222, 2, 8),
    (333, 3, 7),
    (444, 4, 9),
    (555, 5, 8.5);



INSERT INTO Oferta (CodigoMateria, NumeroPersonal, CodigoPeriodo)
VALUES 
    (1112, 9284, 0101),
    (2223, 8285, 0202),  
    (3334, 7586, 0303);  


