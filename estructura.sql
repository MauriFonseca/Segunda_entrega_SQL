DROP DATABASE IF EXISTS Libreria_Petricor;

CREATE DATABASE Libreria_Petricor;

USE Libreria_Petricor;

CREATE TABLE deposito_logistica (
    id_deposito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(100) 
);
CREATE TABLE proveedores (
    id_proveedores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_creacion DATE DEFAULT (CURRENT_DATE),
    nombre VARCHAR(100),
    pais VARCHAR(100),
    email VARCHAR(200) UNIQUE,
    id_deposito INT,
    FOREIGN KEY (id_deposito) REFERENCES deposito_logistica(id_deposito)
);
CREATE TABLE categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE libros (
    id_libros INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100),
    id_categoria INT NOT NULL,
    id_proveedores INT,
    id_deposito INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_proveedores) REFERENCES proveedores(id_proveedores),
    FOREIGN KEY (id_deposito) REFERENCES deposito_logistica(id_deposito)
);
CREATE TABLE inventario (
    id_libros INT,
    id_deposito INT,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100),
    FOREIGN KEY (id_libros) REFERENCES libros(id_libros),
    FOREIGN KEY (id_deposito) REFERENCES deposito_logistica(id_deposito)
);
CREATE TABLE clientes (
    id_clientes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    fecha_alta DATE DEFAULT (CURRENT_DATE),
    telefono VARCHAR(20) NOT NULL
);
CREATE TABLE ventas (
    id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_clientes INT NOT NULL,
    id_libros INT NOT NULL,                              
    cantidad INT NOT NULL CHECK (cantidad > 0),
    fecha DATE DEFAULT (CURRENT_DATE), 
    precio DECIMAL(10, 2) NOT NULL,                       
    precio_IVA DECIMAL(10, 2) AS (precio * 1.22) STORED,  
    FOREIGN KEY (id_libros) REFERENCES libros(id_libros),
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes)
);
CREATE TABLE empleados (
    id_empleados INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_ingreso DATE,
    salario DECIMAL(10, 2) NOT NULL DEFAULT 15000
);
CREATE TABLE gastos_empresariales (
    id_gasto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha DATE DEFAULT (CURRENT_DATE),
    id_proveedores INT,
    id_empleados INT,
    alquiler_local DECIMAL(10, 2) NOT NULL,
    salario DECIMAL(10, 2),
    FOREIGN KEY (id_proveedores) REFERENCES proveedores(id_proveedores),
    FOREIGN KEY (id_empleados) REFERENCES empleados(id_empleados)
);