DROP DATABASE IF EXISTS bd_tiendaOnline;

create database bd_tiendaOnline;

use bd_tiendaOnline;

CREATE TABLE Pais (
    idPais INT UNSIGNED NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Pais PRIMARY KEY (idPais ASC)
);

CREATE TABLE Ubicacion (
    idUbicacion INT UNSIGNED NOT NULL,
    direccion VARCHAR(40),
    ciudad varchar(20),
    idPais INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Ubicacion PRIMARY KEY (idUbicacion),
    CONSTRAINT FK_UbicacionPais FOREIGN KEY (idPais) REFERENCES Pais (idPais)
);

CREATE TABLE Garantia (
    idGarantia INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    caducidad DATETIME NOT NULL,
    CONSTRAINT PK_idGarantia PRIMARY KEY (idGarantia ASC)
);

CREATE TABLE Empleador (
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cuil BIGINT UNSIGNED,
    CONSTRAINT PK_Empleador PRIMARY KEY (cuil ASC)
);

CREATE TABLE Valoracion (
    idValoracion char(8) NOT NULL,
    valoracion FLOAT UNSIGNED NOT NULL,
    CONSTRAINT PK_Valoracion PRIMARY KEY (idValoracion)
);

CREATE TABLE Empleados (
    matricula char(7),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cuil BIGINT UNSIGNED NOT NULL,
    contrato varchar(250) NOT NULL,
    CONSTRAINT PK_Empleados PRIMARY KEY (matricula ASC),
    CONSTRAINT FK_Empleados_Empleador FOREIGN KEY (cuil) REFERENCES Empleador (cuil)
);

CREATE TABLE Categorias (
    idCategoria INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Categorias PRIMARY KEY (idCategoria)
);

CREATE TABLE Usuario (
    idUsuario BIGINT UNSIGNED NOT NULL,
    apodo VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    idPais INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (idUsuario ASC),
    CONSTRAINT FK_UsuarioPais FOREIGN KEY (idPais) REFERENCES Pais (idPais)
);

CREATE TABLE Comentario (
    idComentario INT UNSIGNED NOT NULL,
    idUsuario BIGINT UNSIGNED NOT NULL,
    idValoracion char(8) NOT NULL,
    comentario VARCHAR(300) NOT NULL,
    CONSTRAINT PK_Comentario PRIMARY KEY (idComentario),
    CONSTRAINT FK_ComentarioUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario),
    CONSTRAINT FK_ComentarioValoracion FOREIGN KEY (idValoracion) REFERENCES Valoracion (idValoracion)
);

CREATE TABLE Clientes (
    dni CHAR(8),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    idUsuario BIGINT UNSIGNED NOT NULL,
    CONSTRAINT PK_Clientes PRIMARY KEY (dni ASC),
    CONSTRAINT FK_ClientesUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
);


CREATE TABLE Productos (
    idProducto INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT UNSIGNED NOT NULL,
    descripcion VARCHAR(5000),
    cuil BIGINT UNSIGNED,
    idGarantia INT UNSIGNED,
    idCategoria INT UNSIGNED,
    CONSTRAINT PK_Productos PRIMARY KEY (idProducto ASC),
    CONSTRAINT FK_Productos_Categorias FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria),
    CONSTRAINT FK_Productos_Empleador FOREIGN KEY (cuil) REFERENCES Empleador (cuil),
    CONSTRAINT FK_Productos_Garantia FOREIGN KEY (idGarantia) REFERENCES Garantia (idGarantia)
);

CREATE TABLE Inventario (
    idProducto INT UNSIGNED NOT NULL,
    idInventario INT UNSIGNED NOT NULL,
    cantidad MEDIUMINT UNSIGNED NOT NULL,
    fechaIngreso DATE NOT NULL,
    CONSTRAINT PK_Inventario PRIMARY KEY (idInventario ASC),
    CONSTRAINT FK_Inventario_Producto FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);

CREATE TABLE Pedidos (
    idPedido INT UNSIGNED AUTO_INCREMENT,
    idProducto INT UNSIGNED NOT NULL,
    dni CHAR(8) NOT NULL,
    fechaPedido DATETIME NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Pedidos PRIMARY KEY (idPedido ASC),
    CONSTRAINT FK_Pedidos_Productos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (dni) REFERENCES Clientes (dni)
);

CREATE TABLE Pedidos_Productos (
    idPedidosProductos INT UNSIGNED NOT NULL,
    idPedido INT UNSIGNED NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    cantidad TINYINT UNSIGNED NOT NULL,
    CONSTRAINT PK_PedidoProducto PRIMARY KEY (idPedidosProductos),
    CONSTRAINT FK_Producto FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    CONSTRAINT FK_Pedido FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido)
);

CREATE TABLE HistorialCompra (
    idProducto INT UNSIGNED NOT NULL,
    idCategoria INT UNSIGNED NOT NULL,
    idPedido INT UNSIGNED NOT NULL,
    idUbicacion INT UNSIGNED NOT NULL,
    precioUnitario MEDIUMINT NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT FK_Pedidos_Productos PRIMARY KEY (
        idProducto,
        idCategoria,
        idPedido ASC
    ),
    CONSTRAINT FK_HistorialCompra_Ubicacion FOREIGN KEY (idUbicacion) REFERENCES Ubicacion (idUbicacion),
    CONSTRAINT FK_HistorialCompra_Productos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    CONSTRAINT FK_HistorialCompra_Categoria FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria),
    CONSTRAINT FK_HistorialCompra_Pedido FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido)
);

CREATE TABLE Comprobante (
    numeroDeReferencia INT UNSIGNED AUTO_INCREMENT,
    idPedido INT UNSIGNED NOT NULL,
    dni CHAR(8) NOT NULL,
    fecha DATE NOT NULL,
    montoTotal MEDIUMINT UNSIGNED NOT NULL,
    CONSTRAINT PK_Comprobante PRIMARY KEY (numeroDeReferencia ASC),
    CONSTRAINT FK_Comprobante_Pedidos FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido),
    CONSTRAINT FK_Comprobante_Clientes FOREIGN KEY (dni) REFERENCES Clientes (dni)
);

CREATE TABLE Envios (
    matricula char(7) NOT NULL,
    fechaEnvio DATETIME NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    idEnvio INT UNSIGNED AUTO_INCREMENT,
    CONSTRAINT PK_Envios PRIMARY KEY (idEnvio ASC),
    CONSTRAINT FK_Envios_Empleados FOREIGN KEY (matricula) REFERENCES Empleados (matricula),
    CONSTRAINT FK_Envios_Productos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);

CREATE TABLE Carrito (
    idCarrito INT UNSIGNED NOT NULL,
    precioTotal DECIMAL(10, 2) NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    idPedido INT UNSIGNED,
    CONSTRAINT PK_Carrito PRIMARY KEY (idCarrito),
    CONSTRAINT PK_Carrito_Productos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    CONSTRAINT FK_Carrito_Pedidos FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido)
);