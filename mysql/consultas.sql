-- Listar todos los libros disponibles
SELECT * FROM Libro WHERE disponible = TRUE;

-- Buscar libros por género
SELECT * FROM Libro WHERE genero = 'Realismo mágico';

-- Obtener información de un libro por ISBN
SELECT * FROM Libro WHERE isbn = '978-3-16-148410-0';

-- Contar el número de libros en la biblioteca
SELECT COUNT(*) AS total_libros FROM Libro;

-- Listar todos los autores
SELECT * FROM Autor;

 --Buscar autores por nombre
SELECT * FROM Autor WHERE nombre LIKE 'Gabriel';

-- Obtener todos los libros de un autor específico
SELECT l.titulo
FROM Libro l
JOIN LibroAutor la ON l.id_libro = la.id_libro
JOIN Autor a ON la.id_autor = a.id_autor
WHERE a.nombre = 'Gabriel' AND a.apellido = 'García Márquez';

--Listar todas las ediciones de un libro
SELECT p.fecha_publicacion, p.editorial
FROM Publicacion p
JOIN Libro l ON p.id_libro = l.id_libro
WHERE l.titulo = 'Cien años de soledad';

--Listar todas las transacciones de préstamo
SELECT t.fecha_prestamo, t.fecha_devolucion, m.nombre, m.apellido, l.titulo

--Listar todos los miembros de la biblioteca
SELECT * FROM Miembro;

--Listar todos los libros y sus autores
SELECT l.titulo, a.nombre, a.apellido
FROM Libro l
JOIN LibroAutor la ON l.id_libro = la.id_libro
JOIN Autor a ON la.id_autor = a.id_autor;





