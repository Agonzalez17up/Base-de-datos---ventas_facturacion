-- Total de ventas realizadas
SELECT SUM(total) AS total_ventas
FROM ventas;

-- Ventas por sucursal
SELECT s.nombre AS sucursal, SUM(v.total) AS ventas_sucursal
FROM ventas v
JOIN sucursal s ON v.id_sucursal = s.id_sucursal
GROUP BY s.nombre;

-- Inventario total por producto
SELECT p.nombre AS producto, SUM(i.cantidad) AS inventario_total
FROM inventario i
JOIN productos p ON i.id_producto = p.id_producto
GROUP BY p.nombre;

-- Inventario total por sucursal
SELECT s.nombre AS sucursal, SUM(i.cantidad) AS inventario_total
FROM inventario i
JOIN sucursal s ON i.id_sucursal = s.id_sucursal
GROUP BY s.nombre;

-- Ventas por método de pago
SELECT mp.nombre AS metodo_pago, COUNT(f.id_factura) AS cantidad_ventas, SUM(v.total) AS total_ventas
FROM facturacion f
JOIN metodos_pago mp ON f.id_metodo = mp.id_metodo
JOIN ventas v ON f.id_venta = v.id_venta
GROUP BY mp.nombre;

-- Productos más vendidos
SELECT p.nombre AS producto, SUM(dv.cantidad) AS cantidad_vendida
FROM detalle_venta dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY cantidad_vendida DESC
LIMIT 5;

-- Gastos totales por sucursal
SELECT s.nombre AS sucursal, SUM(t.monto) AS total_gastos
FROM titulos_y_otros_gasto t
JOIN sucursal s ON t.id_sucursal = s.id_sucursal
GROUP BY s.nombre;