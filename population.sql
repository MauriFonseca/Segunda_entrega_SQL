USE Libreria_Petricor;

INSERT INTO Libreria_Petricor.deposito_logistica (pais) VALUES
('España'),
('Argentina'),
('México'),
('Colombia'),
('Chile'),
('Perú'),
('Uruguay'),
('Ecuador'),
('Brasil'),
('Paraguay');

INSERT INTO Libreria_Petricor.proveedores (fecha_creacion, nombre, pais, email, id_deposito) VALUES
('2023-01-15', 'Editorial Planeta', 'España', 'planeta@editorial.com', 1),
('2023-02-20', 'Penguin Random House', 'Argentina', 'penguin@random.com', 2),
('2023-03-10', 'Anagrama', 'México', 'anagrama@libros.com', 3),
('2023-04-05', 'Alfaguara', 'Colombia', 'alfaguara@editorial.com', 4),
('2023-05-12', 'Salamandra', 'Chile', 'salamandra@libros.com', 5),
('2023-06-18', 'Tusquets', 'Perú', 'tusquets@editorial.com', 6),
('2023-07-22', 'Sudamericana', 'Uruguay', 'sudamericana@libros.com', 7),
('2023-08-30', 'Norma', 'Ecuador', 'norma@editorial.com', 8),
('2023-09-14', 'Emecé', 'Brasil', 'emece@libros.com', 9),
('2023-10-25', 'Santillana', 'Paraguay', 'santillana@editorial.com', 10);

INSERT INTO Libreria_Petricor.categorias (nombre_categoria) VALUES
('Ficción'),
('No Ficción'),
('Historia'),
('Ciencia'),
('Arte'),
('Biografías'),
('Infantil'),
('Poesía'),
('Educación'),
('Economía');

INSERT INTO Libreria_Petricor.libros (titulo, autor, id_categoria, id_proveedores, id_deposito) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 1, 1, 1),
('El origen de las especies', 'Charles Darwin', 4, 2, 2),
('Historia del tiempo', 'Stephen Hawking', 4, 3, 3),
('El principito', 'Antoine de Saint-Exupéry', 7, 4, 4),
('1984', 'George Orwell', 1, 5, 5),
('La riqueza de las naciones', 'Adam Smith', 10, 6, 6),
('Rayuela', 'Julio Cortázar', 1, 7, 7),
('El capital', 'Karl Marx', 10, 8, 8),
('Don Quijote', 'Miguel de Cervantes', 1, 9, 9),
('Las venas abiertas de América Latina', 'Eduardo Galeano', 3, 10, 10);

INSERT INTO Libreria_Petricor.inventario (id_libros, id_deposito, cantidad, precio) VALUES
(1, 1, 100, 29.99),
(2, 2, 75, 34.99),
(3, 3, 50, 39.99),
(4, 4, 150, 19.99),
(5, 5, 80, 24.99),
(6, 6, 60, 44.99),
(7, 7, 90, 29.99),
(8, 8, 40, 49.99),
(9, 9, 120, 39.99),
(10, 10, 70, 34.99);

INSERT INTO Libreria_Petricor.clientes (nombre, email, telefono) VALUES
('Ana Martínez', 'ana@email.com', '123456789'),
('Carlos López', 'carlos@email.com', '234567890'),
('María García', 'maria@email.com', '345678901'),
('Juan Rodríguez', 'juan@email.com', '456789012'),
('Laura Sánchez', 'laura@email.com', '567890123'),
('Pedro Ramírez', 'pedro@email.com', '678901234'),
('Sofia Torres', 'sofia@email.com', '789012345'),
('Diego Flores', 'diego@email.com', '890123456'),
('Carmen Ruiz', 'carmen@email.com', '901234567'),
('Miguel Castro', 'miguel@email.com', '012345678');

INSERT INTO Libreria_Petricor.ventas (id_clientes, id_libros, cantidad, fecha, precio) VALUES
(1, 1, 2, '2024-01-15', 29.99),
(2, 2, 1, '2024-01-16', 34.99),
(3, 3, 3, '2024-01-17', 39.99),
(4, 4, 1, '2024-01-18', 19.99),
(5, 5, 2, '2024-01-19', 24.99),
(6, 6, 1, '2024-01-20', 44.99),
(7, 7, 2, '2024-01-21', 29.99),
(8, 8, 1, '2024-01-22', 49.99),
(9, 9, 3, '2024-01-23', 39.99),
(10, 10, 2, '2024-01-24', 34.99);

INSERT INTO Libreria_Petricor.empleados (nombre, apellido, fecha_ingreso, salario) VALUES
('Roberto', 'González', '2023-01-15', 18000),
('Elena', 'Fernández', '2023-02-01', 17000),
('Andrés', 'Morales', '2023-03-10', 16000),
('Paula', 'Jiménez', '2023-04-15', 19000),
('Luis', 'Pérez', '2023-05-20', 20000),
('Isabel', 'Díaz', '2023-06-01', 17500),
('Alberto', 'Vargas', '2023-07-15', 18500),
('Marina', 'López', '2023-08-01', 16500),
('Daniel', 'Torres', '2023-09-10', 19500),
('Carolina', 'Soto', '2023-10-15', 18000);

INSERT INTO Libreria_Petricor.gastos_empresariales (fecha, id_proveedores, id_empleados, alquiler_local, salario) VALUES
('2024-01-15', 1, 1, 5000, 18000),
('2024-02-20', 2, 2, 4800, 17000),
('2024-03-10', 3, 3, 5200, 16000),
('2024-04-05', 4, 4, 4900, 19000),
('2024-05-18', 5, 5, 5100, 20000),
('2024-06-22', 6, 6, 4700, 17500),
('2024-07-07', 7, 7, 5300, 18500),
('2024-08-14', 8, 8, 4600, 16500),
('2024-09-30', 9, 9, 5400, 19500),
('2024-10-12', 10, 10, 5000, 18000);