USE Libreria;

INSERT INTO autor (nombre, apellido, pais) VALUES
('Gabriel', 'García Márquez', 'Colombia'),
('Isabel', 'Allende', 'Chile'),
('Haruki', 'Murakami', 'Japón'),
('Carlos', 'Ruiz Zafón', 'España'),
('J.K.', 'Rowling', 'Reino Unido'),
('George', 'Orwell', 'Reino Unido');



INSERT INTO libro (titulo, fecha, genero, precio, id_autor) VALUES
('Cien años de soledad', 1967, 'Novela', 19.90, 1),
('El amor en los tiempos del cólera', 1985, 'Novela', 18.50, 1),
('La casa de los espíritus', 1982, 'Novela', 17.95, 2),
('Paula', 1994, 'Memorias', 15.00, 2),
('Tokio blues', 1987, 'Novela', 16.90, 3),
('Kafka en la orilla', 2002, 'Novela', 21.00, 3),
('La sombra del viento', 2001, 'Misterio', 20.90, 4),
('Harry Potter y la piedra filosofal', 1997, 'Fantasía', 14.95, 5),
('1984', 1949, 'Distopía', 12.50, 6),
('Rebelión en la granja', 1945, 'Sátira', 9.95, 6);

-- Comprobación: 6 autores, 10 libros
SELECT COUNT(*) AS total_autores FROM autor;
SELECT COUNT(*) AS total_libros FROM libro;

-- Relación 1:n en funcionamiento (10 filas)
SELECT a.nombre, a.apellido, l.titulo, l.fecha
FROM autor a
JOIN libro l ON a.id_autor = l.id_autor
ORDER BY a.apellido;

-- Comprobacion 
SELECT COUNT(*) FROM autor;
SELECT COUNT(*) FROM libro;

