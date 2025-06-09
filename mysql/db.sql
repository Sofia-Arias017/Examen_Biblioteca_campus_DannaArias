CREATE DATABASE Biblioteca_Campus;
USE Biblioteca_Campus;

CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    genero VARCHAR(100),
    isbn VARCHAR(20) UNIQUE,
    fecha_publicacion DATE,
);

CREATE TABLE Autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
)

CREATE TABLE Libro_Autor(
    libro_id INT,
    autor_id INT,
    PRIMARY KEY (libro_id, autor_id),
    FOREIGN KEY (libro_id) REFERENCES libros(id),
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
)

CREATE TABLE Publicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    fecha_publicacion DATE,
    editorial VARCHAR(100),
    FOREIGN KEY (libro_id) REFERENCES libros(id)
)

CREATE TABLE Miembros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    fecha_registro DATE
);

CREATE TABLE Transacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    miembro_id INT,
    libro_id INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    estado ENUM('prestado', 'devuelto') DEFAULT 'prestado',
    FOREIGN KEY (miembro_id) REFERENCES Miembros(id),
    FOREIGN KEY (libro_id) REFERENCES libros(id)
);
