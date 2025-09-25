-- Creación de la tabla clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del cliente',
    nombre VARCHAR(50) NOT NULL COMMENT 'Nombre del cliente',
    apellido VARCHAR(50) COMMENT 'Apellido del cliente',
    identificacion VARCHAR(50) NOT NULL UNIQUE COMMENT 'Documento de identidad del cliente',
    sexo VARCHAR(1) COMMENT 'Sexo del cliente',
    pais VARCHAR(50) COMMENT 'País de residencia del cliente',
    estado VARCHAR(50) COMMENT 'Estado o provincia del cliente',
    ciudad VARCHAR(50) COMMENT 'Ciudad de residencia del cliente',
    sector VARCHAR(50) COMMENT 'Sector o barrio del cliente',
    correo VARCHAR(100) COMMENT 'Correo electrónico del cliente',
    telefono VARCHAR(20) COMMENT 'Teléfono de contacto del cliente',
    direccion VARCHAR(255) COMMENT 'Dirección física del cliente',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de registro del cliente en el sistema'
) ENGINE=InnoDB COMMENT 'Tabla de clientes con los datos principales y de contacto.';

-- Tabla de categorías de productos
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único de la categoría',
    nombre VARCHAR(50) NOT NULL COMMENT 'Nombre de la categoría de producto'
) ENGINE=InnoDB COMMENT 'Tabla que almacena las categorías de los productos.';


-- Creación de la tabla productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del producto',
    nombre VARCHAR(50) NOT NULL COMMENT 'Nombre del producto',
    descripcion VARCHAR(255) COMMENT 'Descripción detallada del producto',
    precio DECIMAL(18,2) NOT NULL COMMENT 'Precio actual del producto',
    stock INT DEFAULT 0 COMMENT 'Cantidad disponible en inventario',
    id_categoria INT COMMENT 'Identificador de la categoría a la que pertenece el producto',
    codigo_barras VARCHAR(50) COMMENT 'Código de barras del producto',
    sku VARCHAR(50) COMMENT 'es un código único (letras y números)',
    id_proveedor INT COMMENT 'Identificador del proveedor del producto',
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
) ENGINE=InnoDB COMMENT 'Tabla de productos tecnológicos disponibles para la venta.';



-- Tabla de historial de precios de productos
CREATE TABLE historial_precios (
    id_historial INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del historial de precios',
    id_producto INT COMMENT 'Identificador del producto',
    precio DECIMAL(18,2) COMMENT 'Precio registrado en el historial',
    fecha_inicio DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de inicio de vigencia del precio',
    fecha_fin DATETIME COMMENT 'Fecha de fin de vigencia del precio',
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
) ENGINE=InnoDB COMMENT 'Historial de cambios de precios de los productos.';

-- Tabla de proveedores
CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del proveedor',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre del proveedor',
    contacto VARCHAR(100) COMMENT 'Persona de contacto del proveedor',
    telefono VARCHAR(20) COMMENT 'Teléfono del proveedor',
    direccion VARCHAR(255) COMMENT 'Dirección del proveedor'
) ENGINE=InnoDB COMMENT 'Tabla de proveedores de productos y servicios.';

-- Tabla de métodos de pago
CREATE TABLE metodos_pago (
    id_metodo INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del método de pago',
    nombre VARCHAR(50) NOT NULL COMMENT 'Nombre del método de pago'
) ENGINE=InnoDB COMMENT 'Métodos de pago aceptados por la empresa.';

-- Tabla SUCURSAL
CREATE TABLE sucursal (
    id_sucursal INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único de la sucursal',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre de la sucursal',
    direccion VARCHAR(255) COMMENT 'Dirección física de la sucursal',
    ciudad VARCHAR(50) COMMENT 'Ciudad donde se ubica la sucursal',
    estado VARCHAR(50) COMMENT 'Estado o provincia de la sucursal',
    pais VARCHAR(50) COMMENT 'País de la sucursal'
) ENGINE=InnoDB COMMENT 'Sucursales físicas de la empresa.';


-- Tabla DEPARTAMENTO
CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del departamento',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre del departamento',
    descripcion VARCHAR(255) COMMENT 'Descripción del departamento',
    id_sucursal INT COMMENT 'Identificador de la sucursal a la que pertenece el departamento',
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
) COMMENT='Departamentos internos de la empresa.';


-- Tabla PERSONAL DE LA EMPRESA
CREATE TABLE personal (
    id_personal INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del empleado',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre del empleado',
    apellido VARCHAR(100) COMMENT 'Apellido del empleado',
    cargo VARCHAR(50) COMMENT 'Cargo o puesto del empleado',
    correo VARCHAR(100) COMMENT 'Correo electrónico del empleado',
    telefono VARCHAR(20) COMMENT 'Teléfono del empleado',
    id_departamento INT COMMENT 'Identificador del departamento al que pertenece el empleado',
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
) ENGINE=InnoDB COMMENT 'Empleados y personal de la empresa.';

-- Creación de la tabla ventas
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único de la venta',
    id_cliente INT COMMENT 'Identificador del cliente que realiza la compra',
    fecha_venta DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en que se realiza la venta',
    total DECIMAL(10,2) COMMENT 'Monto total de la venta',
    id_sucursal INT COMMENT 'Identificador de la sucursal donde se realiza la venta',
    id_personal INT COMMENT 'Identificador del empleado que realiza la venta',
    estado_venta VARCHAR(20) DEFAULT 'completada' COMMENT 'Estado actual de la venta', 
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal),
    FOREIGN KEY (id_personal) REFERENCES personal(id_personal)
) ENGINE=InnoDB COMMENT 'Registro de ventas realizadas a clientes.';


-- Creación de la tabla facturacion
CREATE TABLE facturacion (
    id_factura INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único de la factura',
    id_venta INT COMMENT 'Identificador de la venta asociada a la factura',
    fecha_factura DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de emisión de la factura',
    metodo_pago VARCHAR(50) COMMENT 'Método de pago utilizado',
    id_metodo INT COMMENT 'Identificador del método de pago',
    estado_factura VARCHAR(20) DEFAULT 'Pendiente' COMMENT 'Estado actual de la factura',
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_metodo) REFERENCES metodos_pago(id_metodo)
) ENGINE=InnoDB COMMENT 'Facturación de ventas realizadas en la empresa.';

-- Creación de la tabla detalle_venta
CREATE TABLE detalle_venta (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del detalle de venta',
    id_venta INT COMMENT 'Identificador de la venta',
    id_producto INT COMMENT 'Identificador del producto vendido',
    cantidad INT NOT NULL COMMENT 'Cantidad de productos vendidos',
    precio_unitario DECIMAL(10,2) NOT NULL COMMENT 'Precio unitario del producto',
    subtotal DECIMAL(10,2) COMMENT 'Subtotal por producto',
    descuento DECIMAL(10,2) DEFAULT 0 COMMENT 'Descuento aplicado al producto',
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
) ENGINE=InnoDB COMMENT 'Detalle de productos vendidos en cada venta.';

-- Tabla de movimientos de inventario
CREATE TABLE movimientos_inventario (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del movimiento de inventario',
    id_producto INT COMMENT 'Identificador del producto',
    tipo_movimiento ENUM('entrada','salida') COMMENT 'Tipo de movimiento: entrada o salida',
    cantidad INT COMMENT 'Cantidad de productos movidos',
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha del movimiento',
    referencia VARCHAR(100) COMMENT 'Referencia o motivo del movimiento',
    id_sucursal INT COMMENT 'Identificador de la sucursal donde ocurre el movimiento',
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
) ENGINE=InnoDB COMMENT 'Registro de entradas y salidas de productos en inventario.';


-- Tabla INVENTARIO
CREATE TABLE inventario (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del registro de inventario',
    id_producto INT COMMENT 'Identificador del producto en inventario',
    cantidad INT DEFAULT 0 COMMENT 'Cantidad disponible en inventario',
    ubicacion VARCHAR(100) COMMENT 'Ubicación física del producto en la sucursal',
    fecha_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de ingreso del producto al inventario',
    id_sucursal INT COMMENT 'Identificador de la sucursal donde está el inventario',
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
) ENGINE=InnoDB COMMENT 'Inventario de productos en cada sucursal.';

-- Tabla TITULOS_Y_OTROS_GASTO
CREATE TABLE titulos_y_otros_gasto (
    id_gasto INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del gasto',
    descripcion VARCHAR(255) COMMENT 'Descripción del gasto',
    monto DECIMAL(10,2) NOT NULL COMMENT 'Monto del gasto',
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en que se registra el gasto',
    id_sucursal INT COMMENT 'Identificador de la sucursal asociada al gasto',
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
)  ENGINE=InnoDB COMMENT 'Registro de títulos y otros gastos asociados a la empresa.';
;
