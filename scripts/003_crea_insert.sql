-- Inserción de datos en clientes
INSERT INTO clientes (
    nombre, apellido, identificacion, sexo, pais, estado, ciudad, sector, correo, telefono, direccion
) VALUES
('Juan', 'Pérez', '8-123-456', 'Masculino', 'Panamá', 'Panamá', 'Ciudad de Panamá', 'San Francisco', 'juan.perez@email.com', '6000-1234', 'Calle 50, Edificio Torre Azul'),
('María', 'González', '4-567-890', 'Femenino', 'Panamá', 'Colón', 'Colón', 'Centro', 'maria.gonzalez@email.com', '6100-5678', 'Avenida Central, Casa 12'),
('Carlos', 'Rodríguez', '9-321-654', 'Masculino', 'Panamá', 'Chiriquí', 'David', 'Las Lomas', 'carlos.rodriguez@email.com', '6200-9876', 'Calle F Sur, Residencial El Valle');

-- Inserción de datos en productos
INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Disco Duro SSD 500GB', 'Almacenamiento rápido para computadoras', 75.00, 50),
('Memoria RAM 8GB DDR4', 'Memoria para equipos de escritorio', 40.00, 100),
('Monitor LED 24"', 'Monitor de alta definición', 120.00, 30);


-- Inserción de datos en ventas
INSERT INTO ventas (id_cliente, fecha_venta, total, id_sucursal, id_personal) VALUES
(1, '2023-11-01 10:00:00', 190.00, 1, 1),
(2, '2023-11-02 14:30:00', 160.00, 1, 2);


-- Inserción de datos en detalle_venta
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 75.00),
(1, 2, 2, 40.00),
(2, 3, 1, 120.00),
(2, 2, 1, 40.00);


-- Inserción de datos en facturacion
INSERT INTO facturacion (id_venta, fecha_factura, metodo_pago, estado_factura) VALUES
(1, '2023-11-01 10:05:00', 'Tarjeta de crédito', 'Pagada'),
(2, '2023-11-02 14:35:00', 'Transferencia bancaria', 'Pendiente');



-- Inserción de datos en sucursal
INSERT INTO sucursal (nombre, direccion, ciudad, estado, pais) VALUES
('Sucursal Principal', 'Calle 50', 'Ciudad de Panamá', 'Panamá', 'Panamá');


-- Inserción de datos en sucursal
INSERT INTO sucursal (nombre, direccion, ciudad, estado, pais) VALUES
('Sucursal Principal', 'Calle 50', 'Ciudad de Panamá', 'Panamá', 'Panamá');

-- Inserción de datos en departamento
INSERT INTO departamento (nombre, descripcion, id_sucursal) VALUES
('Ventas', 'Departamento de ventas', 1),
('Soporte', 'Departamento de soporte técnico', 1);

-- Inserción de datos en personal
INSERT INTO personal (nombre, apellido, cargo, correo, telefono, id_departamento) VALUES
('Pedro', 'Ramírez', 'Vendedor', 'pedro.ramirez@email.com', '6300-1111', 1),
('Ana', 'López', 'Soporte', 'ana.lopez@email.com', '6300-2222', 2);
