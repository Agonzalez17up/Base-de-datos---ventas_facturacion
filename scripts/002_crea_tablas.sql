-- Creación de la tabla clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    identificacion VARCHAR(50) NOT NULL UNIQUE,
    sexo VARCHAR(20),
    pais VARCHAR(50),
    estado VARCHAR(50),
    ciudad VARCHAR(50),
    sector VARCHAR(50),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

-- Creación de la tabla productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0
);

-- Creación de la tabla ventas
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_venta DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    id_sucursal INT,
    id_personal INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal),
    FOREIGN KEY (id_personal) REFERENCES personal(id_personal)
);

-- Creación de la tabla facturacion
CREATE TABLE facturacion (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    fecha_factura DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo_pago VARCHAR(50),
    estado_factura VARCHAR(20) DEFAULT 'Pendiente',
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
);

-- Creación de la tabla detalle_venta
CREATE TABLE detalle_venta (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);


-- Tabla SUCURSAL
CREATE TABLE sucursal (
    id_sucursal INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    ciudad VARCHAR(50),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

-- Tabla DEPARTAMENTO
CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    id_sucursal INT,
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);

-- Tabla PERSONAL
CREATE TABLE personal (
    id_personal INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    cargo VARCHAR(50),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

-- Tabla INVENTARIO
CREATE TABLE inventario (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    cantidad INT DEFAULT 0,
    ubicacion VARCHAR(100),
    fecha_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_sucursal INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);

-- Tabla TITULOS_Y_OTROS_GASTO
CREATE TABLE titulos_y_otros_gasto (
    id_gasto INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    monto DECIMAL(10,2) NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_sucursal INT,
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);
