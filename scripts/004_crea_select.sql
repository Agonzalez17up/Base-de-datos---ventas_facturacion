-- Reporte de clientes y cantidad de ventas realizadas
SELECT c.id_cliente, c.nombre, c.apellido, COUNT(v.id_venta) AS cantidad_ventas
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre, c.apellido;

-- Reporte de productos vendidos y cantidad total vendida
SELECT p.id_producto, p.nombre, SUM(dv.cantidad) AS total_vendido
FROM productos p
JOIN detalle_venta dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre;

-- Reporte de ventas con detalle de productos y cliente
SELECT v.id_venta, v.fecha_venta, c.nombre AS cliente, p.nombre AS producto, dv.cantidad, dv.precio_unitario, dv.subtotal
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN detalle_venta dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
ORDER BY v.fecha_venta DESC;


-- Reporte de facturación por estado
SELECT estado_factura, COUNT(*) AS cantidad, SUM(fv.total) AS monto_total
FROM facturacion f
JOIN ventas fv ON f.id_venta = fv.id_venta
GROUP BY estado_factura;