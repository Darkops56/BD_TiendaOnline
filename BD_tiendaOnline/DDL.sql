-- Active: 1691412339871@@127.0.0.1@3306@bd_tiendaOnline
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
    direccion VARCHAR(40) NOT NULL,
    ciudad varchar(20) NOT NULL,
    provincia varchar (100) NOT NULL,
    codigoPostal VARCHAR(15) NOT NULL,
    idPais INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Ubicacion PRIMARY KEY (idUbicacion),
    CONSTRAINT FK_UbicacionPais FOREIGN KEY (idPais) REFERENCES Pais (idPais)
);
CREATE TABLE Garantia (
    idGarantia INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipoGarantia VARCHAR(100) NOT NULL,
    caducidad DATETIME NOT NULL,
    condiciones VARCHAR(100) NOT NULL,
    CONSTRAINT PK_idGarantia PRIMARY KEY (idGarantia ASC)
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
    puesto VARCHAR(100) NOT NULL,
    fechaIngreso DATE NOT NULL,
    salario INT UNSIGNED NOT NULL,
    contrato DATE NOT NULL,
    CONSTRAINT PK_Empleados PRIMARY KEY (matricula ASC)
);
CREATE TABLE Categorias (
    idCategoria INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Categorias PRIMARY KEY (idCategoria)
);
CREATE TABLE Clientes (
    idCliente INT UNSIGNED AUTO_INCREMENT,
    dni CHAR(8),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Clientes PRIMARY KEY (idCliente ASC)
);
CREATE TABLE Usuario (
    idUsuario BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    apodo VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(40) NOT NULL UNIQUE,
    idUbicacion INT UNSIGNED NOT NULL,
    idCliente INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (idUsuario ASC),
    CONSTRAINT FK_UsuarioUbicacion FOREIGN KEY (idUbicacion) REFERENCES Ubicacion(idUbicacion),
    CONSTRAINT FK_UsuarioClientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);
CREATE TABLE Registro (
    idRegistro BIGINT UNSIGNED not NULL AUTO_INCREMENT,
    idUsuario BIGINT UNSIGNED not NULL, 
    fechaRegistro DATE NOT NULL,
    CONSTRAINT PK_IdRegistro PRIMARY KEY (idRegistro ASC),
    CONSTRAINT FK_RegistroUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
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
CREATE TABLE Inventario (
    idInventario INT UNSIGNED NOT NULL,
    cantidad MEDIUMINT UNSIGNED NOT NULL,
    fechaIngreso DATE NOT NULL,
    CONSTRAINT PK_Inventario PRIMARY KEY (idInventario ASC)
);
CREATE TABLE Productos (
    idProducto INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descripcion VARCHAR(5000),
    idInventario INT UNSIGNED NOT NULL,
    idGarantia INT UNSIGNED NOT NULL,
    idCategoria INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Productos PRIMARY KEY (idProducto ASC),
    CONSTRAINT FK_Productos_Inventario FOREIGN KEY (idInventario) REFERENCES Inventario (idInventario),
    CONSTRAINT FK_Productos_Categorias FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria),
    CONSTRAINT FK_Productos_Garantia FOREIGN KEY (idGarantia) REFERENCES Garantia (idGarantia)
);
CREATE TABLE Carrito (
    idCarrito INT UNSIGNED NOT NULL,
    precioTotal DECIMAL(10, 2) NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    idUsuario INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Carrito PRIMARY KEY (idCarrito),
    CONSTRAINT PK_Carrito_Productos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);
CREATE TABLE Carrito_Productos(
    idProducto INT UNSIGNED NOT NULL,
    idCarrito INT UNSIGNED NOT NULL,
    CONSTRAINT PK_Carrito_Productos PRIMARY KEY (idProducto, idCarrito),
    CONSTRAINT FK_CP_Producto FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    CONSTRAINT FK_CP_Carrito FOREIGN KEY (idCarrito) REFERENCES Carrito(idCarrito)
);
CREATE TABLE Pedidos (
    idPedido INT UNSIGNED AUTO_INCREMENT,
    idUsuario BIGINT UNSIGNED NOT NULL,
    idCarrito INT UNSIGNED NOT NULL,
    estado varchar(50) NOT NULL,
    fechaPedido DATETIME NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    formaPago VARCHAR(50) NOT NULL,
    total MEDIUMINT UNSIGNED NOT NULL,
    CONSTRAINT PK_Pedidos PRIMARY KEY (idPedido ASC),
    CONSTRAINT FK_Pedidos_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario),
    CONSTRAINT FK_Pedidos_Carrito FOREIGN KEY (idCarrito) REFERENCES Carrito (idCarrito)
);
CREATE TABLE Pedidos_Productos (
    idPedido INT UNSIGNED NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    CONSTRAINT PK_PedidoProducto PRIMARY KEY (idPedido, idProducto),
    CONSTRAINT FK_Producto FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    CONSTRAINT FK_Pedido FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido)
);
CREATE TABLE HistorialCompra (
    idProducto INT UNSIGNED NOT NULL,
    idCategoria INT UNSIGNED NOT NULL,
    idPedido INT UNSIGNED NOT NULL,
    idUsuario BIGINT UNSIGNED NOT NULL,
    idUbicacion INT UNSIGNED NOT NULL,
    precioUnitario MEDIUMINT UNSIGNED NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT PK_HistorialCompra PRIMARY KEY (idProducto, idCategoria, idPedido),
    CONSTRAINT FK_HC_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    CONSTRAINT FK_HC_Ubicacion FOREIGN KEY (idUbicacion) REFERENCES Ubicacion(idUbicacion),
    CONSTRAINT FK_HC_Producto FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    CONSTRAINT FK_HC_Categoria FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria),
    CONSTRAINT FK_HC_Pedido FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido)
);
CREATE TABLE Comprobante (
    numeroDeReferencia INT UNSIGNED AUTO_INCREMENT,
    idPedido INT UNSIGNED NOT NULL,
    idUsuario BIGINT UNSIGNED NOT NULL,
    fecha DATE NOT NULL,
    formaPago VARCHAR(50),
    estadoPago VARCHAR(50),
    montoTotal MEDIUMINT UNSIGNED NOT NULL,
    CONSTRAINT PK_Comprobante PRIMARY KEY (numeroDeReferencia ASC),
    CONSTRAINT FK_Comprobante_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario),
    CONSTRAINT FK_Comprobante_Pedidos FOREIGN KEY (idPedido) REFERENCES Pedidos (idPedido)
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
CREATE TABLE Venta (
    idVenta BIGINT UNSIGNED AUTO_INCREMENT,
    idUsuario BIGINT UNSIGNED NOT NULL,
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    metodoPago VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    PRIMARY KEY (idVenta),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);
CREATE TABLE DetalleVenta (
    idDetalle BIGINT UNSIGNED AUTO_INCREMENT,
    idVenta BIGINT UNSIGNED NOT NULL,
    idProducto INT UNSIGNED NOT NULL,
    cantidad INT UNSIGNED NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idDetalle),
    FOREIGN KEY (idVenta) REFERENCES Venta(idVenta),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
CREATE TABLE Stock (
    idStock BIGINT UNSIGNED AUTO_INCREMENT,
    idProducto INT UNSIGNED NOT NULL,
    cantidad INT UNSIGNED NOT NULL,
    fechaActualizacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idStock),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);  