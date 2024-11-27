-- Vista de estado de inventario
USE Libreria_petricor;

DROP VIEW IF EXISTS v_estado_inventario;
CREATE VIEW v_estado_inventario AS
SELECT 
    l.titulo,
    dl.pais,
    i.cantidad,
    i.precio,
    (i.cantidad * i.precio) as valor_inventario,
    CASE 
        WHEN i.cantidad < 20 THEN 'Crítico'
        WHEN i.cantidad < 50 THEN 'Bajo'
        ELSE 'Normal'
    END as nivel_stock
FROM inventario i
JOIN libros l ON i.id_libros = l.id_libros
JOIN deposito_logistica dl ON i.id_deposito = dl.id_deposito;

-- Vista de comportamiento de clientes
DROP VIEW IF EXISTS v_analisis_clientes;
CREATE VIEW v_analisis_clientes AS
SELECT 
    c.nombre,
    COUNT(v.id_venta) as numero_compras,
    SUM(v.cantidad) as libros_comprados,
    SUM(v.precio_IVA) as total_gastado,
    AVG(v.precio_IVA) as ticket_promedio,
    MAX(v.fecha) as ultima_compra
FROM clientes c
JOIN ventas v ON c.id_clientes = v.id_clientes
GROUP BY c.nombre;