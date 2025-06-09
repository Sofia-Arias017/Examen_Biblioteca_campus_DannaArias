CREATEATE DATABASE Biblioteca_Campus;
USE Biblioteca_Campus;

INSERT INTO libros (titulo, autor, genero, isbn, fecha_publicacion) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 'Realismo mágico', '978-3-16-148410-0', '1967-06-05'),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela', '978-3-16-148410-1', '1605-01-16'),
('El amor en los tiempos del cólera', 'Gabriel García Márquez', 'Romance', '978-3-16-148410-2', '1985-03-25');

INSERT INTO Autores (nombre, apellido, fecha_nacimiento) VALUES
('Gabriel', 'García Márquez', '1927-03-06'),
('Miguel', 'de Cervantes', '1547-09-29');

INSERT INTO Libro_Autor (libro_id, autor_id) VALUES
(1, 1), -- Cien años de soledad - Gabriel García Márquez
(2, 2), -- Don Quijote de la Mancha - Miguel de Cervantes
(3, 1); -- El amor en los tiempos del cólera - Gabriel García Márquez

INSERT INTO Publicacion (libro_id, fecha_publicacion, editorial) VALUES
(1, '1967-06-05', 'Editorial Sudamericana'),
(2, '1605-01-16', 'Francisco de Robles'),
(3, '1985-03-25', 'Editorial Oveja Negra');

INSERT INTO Miembros (nombre, apellido, email, telefono, fecha_registro) VALUES
('Juan', 'Pérez', 'juanperez@gmail.com', '3187440526', '2023-01-15'),
('María', 'Gómez', 'maria25@gmail.com', '3173497587', '2023-02-20'),
('Carlos', 'López', 'carlitos@gmail.com', '3157845724', '2023-03-10');

INSERT INTO Transacciones (miembro_id, libro_id, fecha_prestamo, fecha_devolucion, estado) VALUES
(1, 1, '2023-04-01', NULL, 'prestado'), -- Juan Pérez ha tomado prestado "Cien años de soledad"
(2, 2, '2023-04-05', '2023-04-15', 'devuelto'), -- María Gómez ha tomado prestado "Don Quijote de la Mancha" y lo devolvió
(3, 3, '2023-04-10', NULL, 'prestado'); -- Carlos López ha tomado prestado "El amor en los tiempos del cólera"

