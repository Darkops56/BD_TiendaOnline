DELIMITER $$
--Realizar un SP que permita dar de alta un nuevo producto.
CREATE PROCEDURE RegistrarUsuario(
    Dni CHAR(8),
    NombreCliente VARCHAR(50),
    ApellidoCliente VARCHAR(50),
    Apodo VARCHAR(20),
    Email VARCHAR(40),
    IdUbicacion INT
)
BEGIN
    INSERT INTO Clientes (dni, nombre, apellido) VALUES (Dni, NombreCliente, ApellidoCliente);
    INSERT INTO Usuario (apodo, email, idUbicacion, idCliente) VALUES (Apodo, Email, IdUbicacion, LAST_INSERT_ID());
END $$
--Realizar un SP que permita actualizar el stock de un producto.
CREATE PROCEDURE ActualizarStockProducto(
    IdProducto INT,
    CantidadVendida INT
)
BEGIN
    UPDATE Stock
    SET cantidad = cantidad - CantidadVendida,
        fechaActualizacion = CURRENT_TIMESTAMP
    WHERE idProducto = IdProducto;
END $$
-- Generar comprobante
CREATE PROCEDURE GenerarComprobante(IdPedido INT)
BEGIN
    DECLARE IdUsuario BIGINT;
    DECLARE FormaPago VARCHAR(50);
    DECLARE Total MEDIUMINT;

    SELECT idUsuario, formaPago, total INTO IdUsuario, FormaPago, Total
    FROM Pedidos
    WHERE idPedido = IdPedido;

    INSERT INTO Comprobante (idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal)
    VALUES (IdPedido, IdUsuario, CURDATE(), FormaPago, 'Pagado', Total);
END $$
--Realizar un SP que registre un nuevo envio.
CREATE PROCEDURE HistorialDeUsuario(IdUsuario BIGINT)
BEGIN
    SELECT hc.fecha, p.nombre AS producto, hc.precioUnitario, c.nombre AS categoria
    FROM HistorialCompra hc
    JOIN Productos p USING (`idProducto`)
    JOIN Categorias c USING (`idCategoria`)
    WHERE hc.idUsuario = p_idUsuario;
END $$