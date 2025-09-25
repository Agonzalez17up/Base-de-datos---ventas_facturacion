-- INSERTS para la tabla clientes
INSERT INTO clientes (nombre, apellido, identificacion, sexo, pais, estado, ciudad, sector, correo, telefono, direccion)
VALUES
('Juan', 'Pérez', '8-952-3332', 'M', 'Panamá', 'Panamá', 'Panamá', 'San Francisco', 'juan.perez@email.com', '66110001', 'Calle 50, Casa 10'),
('Ana', 'González', '4-123-4567', 'F', 'Panamá', 'Colón', 'Colón', 'Centro', 'ana.gonzalez@email.com', '66110002', 'Avenida Central, Edificio 5'),
('Luis', 'Martínez', '9-876-5432', 'M', 'Panamá', 'Chiriquí', 'David', 'Sur', 'luis.martinez@email.com', '66110003', 'Calle Sur, Casa 20'),
('María', 'Rodríguez', '2-345-6789', 'F', 'Panamá', 'Veraguas', 'Santiago', 'Oeste', 'maria.rodriguez@email.com', '66110004', 'Calle Oeste, Casa 30'),
('Pedro', 'Jiménez', '7-654-3210', 'M', 'Panamá', 'Panamá', 'Panamá', 'Bella Vista', 'pedro.jimenez@email.com', '66110005', 'Calle Bella Vista, Casa 40'),
('Erika', 'Mendoza', '8-123-4567', 'F', 'Panamá', 'Panamá', 'Panamá', 'Obarrio', 'erika.mendoza@email.com', '66110006', 'Calle 52, Edificio 2'),
('Roberto', 'Santos', '3-456-7890', 'M', 'Panamá', 'Colón', 'Colón', 'Cristóbal', 'roberto.santos@email.com', '66110007', 'Calle Cristóbal, Casa 15'),
('Patricia', 'Vega', '6-789-0123', 'F', 'Panamá', 'Chiriquí', 'David', 'Norte', 'patricia.vega@email.com', '66110008', 'Calle Norte, Casa 25'),
('Fernando', 'López', '5-234-5678', 'M', 'Panamá', 'Veraguas', 'Santiago', 'Este', 'fernando.lopez@email.com', '66110009', 'Calle Este, Casa 35'),
('Carmen', 'Castillo', '1-345-6789', 'F', 'Panamá', 'Panamá', 'Panamá', 'El Cangrejo', 'carmen.castillo@email.com', '66110010', 'Calle El Cangrejo, Casa 45'),
('Jorge', 'Ramírez', '7-890-1234', 'M', 'Panamá', 'Panamá', 'Panamá', 'Paitilla', 'jorge.ramirez@email.com', '66110011', 'Calle Paitilla, Casa 55'),
('Sofia', 'Jiménez', '2-567-8901', 'F', 'Panamá', 'Colón', 'Colón', 'Puerto', 'sofia.jimenez@email.com', '66110012', 'Calle Puerto, Casa 65'),
('Ricardo', 'Moreno', '4-678-9012', 'M', 'Panamá', 'Chiriquí', 'David', 'Centro', 'ricardo.moreno@email.com', '66110013', 'Calle Centro, Casa 75'),
('Valeria', 'García', '9-012-3456', 'F', 'Panamá', 'Veraguas', 'Santiago', 'Sur', 'valeria.garcia@email.com', '66110014', 'Calle Sur, Casa 85'),
('Esteban', 'Martínez', '8-234-5678', 'M', 'Panamá', 'Panamá', 'Panamá', 'Costa del Este', 'esteban.martinez@email.com', '66110015', 'Calle Costa del Este, Casa 95');

-- INSERTS para la tabla categorias
INSERT INTO categorias (nombre) VALUES
('Laptops'),
('Celulares'),
('Accesorios'),
('Impresoras'),
('Redes'),
('Tablets'),
('Monitores'),
('Teclados'),
('Cámaras'),
('Audio'),
('Almacenamiento'),
('Software'),
('Consumibles'),
('Smartwatch'),
('Gaming');

-- INSERTS para la tabla proveedores
INSERT INTO proveedores (nombre, contacto, telefono, direccion) VALUES
('TechDistribuidora Panamá', 'Carlos Ruiz', '203-4567', 'Calle 50, Panamá'),
('GlobalTech S.A.', 'Sandra López', '204-5678', 'Avenida Balboa, Panamá'),
('ElectroPanamá', 'Miguel Torres', '205-6789', 'Calle 12, Colón'),
('CompuExpress', 'Laura Gómez', '206-7890', 'Calle Principal, David'),
('RedesYA', 'José Castillo', '207-8901', 'Calle 8, Santiago'),
('PanamaTech', 'Luis Herrera', '208-9012', 'Calle 60, Panamá'),
('Distribuidora Colón', 'Marta Díaz', '209-0123', 'Avenida 3, Colón'),
('ChiriquíElectro', 'Pedro González', '210-1234', 'Calle 15, David'),
('VeraguasTech', 'Sonia Pérez', '211-2345', 'Calle 20, Santiago'),
('HerreraExpress', 'Carlos Jiménez', '212-3456', 'Calle 7, Chitré'),
('SmartPanamá', 'Ana Vargas', '213-4567', 'Calle 80, Panamá'),
('RedesGlobal', 'Javier Soto', '214-5678', 'Calle 9, Panamá'),
('CompuStore', 'Patricia Ríos', '215-6789', 'Calle 22, Panamá'),
('ElectroStore', 'Roberto Díaz', '216-7890', 'Calle 33, Panamá'),
('TechMarket', 'Valeria Gómez', '217-8901', 'Calle 44, Panamá');

-- INSERTS para la tabla productos
INSERT INTO productos (nombre, descripcion, precio, stock, id_categoria, codigo_barras, sku, id_proveedor) VALUES
('Laptop HP', 'Laptop HP 15 pulgadas, 8GB RAM', 650.00, 10, 1, '7501001234567', 'HP15-8GB', 1),
('iPhone 13', 'Apple iPhone 13, 128GB', 900.00, 15, 2, '7502002345678', 'IPH13-128', 2),
('Mouse Logitech', 'Mouse inalámbrico Logitech', 25.00, 50, 3, '7503003456789', 'LOG-MOUSE', 3),
('Impresora Epson', 'Impresora multifunción Epson', 120.00, 8, 4, '7504004567890', 'EPS-MULTI', 4),
('Router TP-Link', 'Router inalámbrico TP-Link', 60.00, 20, 5, '7505005678901', 'TPL-ROUTER', 5),
('Tablet Lenovo', 'Tablet Lenovo 10 pulgadas', 210.00, 14, 6, '7511001234567', 'LEN-TAB10', 6),
('Monitor LG', 'Monitor LG 27 pulgadas', 250.00, 8, 7, '7512002345678', 'LG-27LED', 7),
('Teclado Microsoft', 'Teclado inalámbrico Microsoft', 35.00, 30, 8, '7513003456789', 'MS-KEY', 8),
('Cámara Logitech', 'Cámara web Logitech HD', 70.00, 18, 9, '7514004567890', 'LOG-HD', 9),
('Audífonos Sony', 'Audífonos inalámbricos Sony', 80.00, 22, 10, '7515005678901', 'SONY-WL', 10),
('Disco Duro Seagate', 'Disco duro externo 1TB', 95.00, 16, 6, '7516006789012', 'SEA-1TB', 1),
('Licencia Windows', 'Licencia Windows 11 Pro', 130.00, 25, 7, '7517007890123', 'WIN-11PRO', 2),
('Cartucho HP', 'Cartucho de tinta HP 662', 20.00, 40, 8, '7518008901234', 'HP-662', 3),
('Smartwatch Xiaomi', 'Smartwatch Xiaomi Mi Band 6', 55.00, 19, 9, '7519009012345', 'XIA-MB6', 4),
('Mouse Razer', 'Mouse gaming Razer', 60.00, 27, 10, '7520000123456', 'RAZER-GAM', 5);

-- INSERTS para la tabla historial_precios
INSERT INTO historial_precios (id_producto, precio, fecha_inicio, fecha_fin) VALUES
(1, 650.00, '2025-09-01', NULL),
(2, 900.00, '2025-09-01', NULL),
(3, 25.00, '2025-09-01', NULL),
(4, 120.00, '2025-09-01', NULL),
(5, 60.00, '2025-09-01', NULL),
(6, 210.00, '2025-09-01', NULL),
(7, 250.00, '2025-09-01', NULL),
(8, 35.00, '2025-09-01', NULL),
(9, 70.00, '2025-09-01', NULL),
(10, 80.00, '2025-09-01', NULL);

-- INSERTS para la tabla metodos_pago
INSERT INTO metodos_pago (nombre) VALUES
('Efectivo'),
('Tarjeta de Crédito'),
('Transferencia Bancaria'),
('Yappy'),
('ACH');

-- INSERTS para la tabla sucursal
INSERT INTO sucursal (nombre, direccion, ciudad, estado, pais) VALUES
('Sucursal Panamá', 'Calle 50', 'Panamá', 'Panamá', 'Panamá'),
('Sucursal Colón', 'Avenida Central', 'Colón', 'Colón', 'Panamá'),
('Sucursal David', 'Calle Principal', 'David', 'Chiriquí', 'Panamá'),
('Sucursal Santiago', 'Calle 8', 'Santiago', 'Veraguas', 'Panamá'),
('Sucursal Chitré', 'Calle 5', 'Chitré', 'Herrera', 'Panamá');

-- INSERTS para la tabla departamento
INSERT INTO departamento (nombre, descripcion, id_sucursal) VALUES
('Ventas', 'Departamento de ventas', 1),
('Soporte', 'Departamento de soporte técnico', 2),
('Administración', 'Departamento administrativo', 3),
('Almacén', 'Departamento de almacén', 4),
('Logística', 'Departamento de logística', 5);

-- INSERTS para la tabla personal
INSERT INTO personal (nombre, apellido, cargo, correo, telefono, id_departamento) VALUES
('Carlos', 'Ruiz', 'Vendedor', 'carlos.ruiz@empresa.com', '66120001', 1),
('Sandra', 'López', 'Soporte', 'sandra.lopez@empresa.com', '66120002', 2),
('Miguel', 'Torres', 'Administrador', 'miguel.torres@empresa.com', '66120003', 3),
('Laura', 'Gómez', 'Almacenero', 'laura.gomez@empresa.com', '66120004', 4),
('José', 'Castillo', 'Logística', 'jose.castillo@empresa.com', '66120005', 5);

-- INSERTS para la tabla ventas
INSERT INTO ventas (id_cliente, fecha_venta, total, id_sucursal, id_personal, estado_venta) VALUES
(1, '2025-09-20', 650.00, 1, 1, 'completada'),
(2, '2025-09-21', 900.00, 2, 2, 'completada'),
(3, '2025-09-22', 25.00, 3, 3, 'completada'),
(4, '2025-09-23', 120.00, 4, 4, 'completada'),
(5, '2025-09-24', 60.00, 5, 5, 'completada'),
(6, '2025-09-30', 210.00, 1, 1, 'completada'),
(7, '2025-10-01', 250.00, 2, 2, 'completada'),
(8, '2025-10-02', 35.00, 3, 3, 'completada'),
(9, '2025-10-03', 70.00, 4, 4, 'completada'),
(10, '2025-10-04', 80.00, 5, 5, 'completada'),
(1, '2025-10-05', 95.00, 1, 1, 'completada'),
(2, '2025-10-06', 130.00, 2, 2, 'completada'),
(3, '2025-10-07', 20.00, 3, 3, 'completada'),
(4, '2025-10-08', 55.00, 4, 4, 'completada'),
(5, '2025-10-09', 60.00, 5, 5, 'completada');

-- INSERTS para la tabla facturacion
INSERT INTO facturacion (id_venta, fecha_factura, metodo_pago, id_metodo, estado_factura) VALUES
(1, '2025-09-20', 'Efectivo', 1, 'Pagada'),
(2, '2025-09-21', 'Tarjeta de Crédito', 2, 'Pagada'),
(3, '2025-09-22', 'Transferencia Bancaria', 3, 'Pagada'),
(4, '2025-09-23', 'Yappy', 4, 'Pendiente'),
(5, '2025-09-24', 'ACH', 5, 'Pagada'),
(6, '2025-09-30', 'Efectivo', 1, 'Pagada'),
(7, '2025-10-01', 'Tarjeta de Crédito', 2, 'Pagada'),
(8, '2025-10-02', 'Transferencia Bancaria', 3, 'Pagada'),
(9, '2025-10-03', 'Yappy', 4, 'Pagada'),
(10, '2025-10-04', 'ACH', 5, 'Pagada'),
(11, '2025-10-05', 'Efectivo', 1, 'Pagada'),
(12, '2025-10-06', 'Tarjeta de Crédito', 2, 'Pagada'),
(13, '2025-10-07', 'Transferencia Bancaria', 3, 'Pagada'),
(14, '2025-10-08', 'Yappy', 4, 'Pagada'),
(15, '2025-10-09', 'ACH', 5, 'Pagada');

-- INSERTS para la tabla detalle_venta
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario, subtotal, descuento) VALUES
(1, 1, 1, 650.00, 650.00, 0),
(2, 2, 1, 900.00, 900.00, 0),
(3, 3, 2, 25.00, 50.00, 0),
(4, 4, 1, 120.00, 120.00, 0),
(5, 5, 1, 60.00, 60.00, 0),
(6, 6, 1, 210.00, 210.00, 0),
(7, 7, 1, 250.00, 250.00, 0),
(8, 8, 1, 35.00, 35.00, 0),
(9, 9, 1, 70.00, 70.00, 0),
(10, 10, 1, 80.00, 80.00, 0);

-- INSERTS para la tabla movimientos_inventario
INSERT INTO movimientos_inventario (id_producto, tipo_movimiento, cantidad, fecha, referencia, id_sucursal) VALUES
(1, 'entrada', 10, '2025-09-10', 'Compra inicial', 1),
(2, 'entrada', 15, '2025-09-11', 'Compra inicial', 2),
(3, 'entrada', 50, '2025-09-12', 'Compra inicial', 3),
(4, 'entrada', 8, '2025-09-13', 'Compra inicial', 4),
(5, 'entrada', 20, '2025-09-14', 'Compra inicial', 5),
(6, 'entrada', 14, '2025-09-20', 'Compra inicial', 1),
(7, 'entrada', 8, '2025-09-21', 'Compra inicial', 2),
(8, 'entrada', 30, '2025-09-22', 'Compra inicial', 3),
(9, 'entrada', 18, '2025-09-23', 'Compra inicial', 4),
(10, 'entrada', 22, '2025-09-24', 'Compra inicial', 5);

-- INSERTS para la tabla inventario
INSERT INTO inventario (id_producto, cantidad, ubicacion, fecha_ingreso, id_sucursal) VALUES
(1, 10, 'Estante A', '2025-09-10', 1),
(2, 15, 'Estante B', '2025-09-11', 2),
(3, 50, 'Estante C', '2025-09-12', 3),
(4, 8, 'Estante D', '2025-09-13', 4),
(5, 20, 'Estante E', '2025-09-14', 5),
(6, 14, 'Estante K', '2025-09-20', 1),
(7, 8, 'Estante L', '2025-09-21', 2),
(8, 30, 'Estante M', '2025-09-22', 3),
(9, 18, 'Estante N', '2025-09-23', 4),
(10, 22, 'Estante O', '2025-09-24', 5),
(1, 7, 'Estante P', '2025-09-25', 1),
(2, 12, 'Estante Q', '2025-09-26', 2),
(3, 15, 'Estante R', '2025-09-27', 3),
(4, 9, 'Estante S', '2025-09-28', 4),
(5, 11, 'Estante T', '2025-09-29', 5);

-- INSERTS para la tabla titulos_y_otros_gasto
INSERT INTO titulos_y_otros_gasto (descripcion, monto, fecha, id_sucursal) VALUES
('Pago de servicios públicos', 300.00, '2025-09-01', 1),
('Compra de insumos de oficina', 150.00, '2025-09-02', 2),
('Mantenimiento de equipos', 200.00, '2025-09-03', 3),
('Publicidad y marketing', 500.00, '2025-09-04', 4),
('Gastos de transporte', 100.00, '2025-09-05', 5);