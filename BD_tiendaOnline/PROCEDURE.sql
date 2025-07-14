DELIMITER $$
--Realizar un SP que permita dar de alta un nuevo producto.
CREATE PROCEDURE sp_RegistrarUsuario(
    IN p_dni CHAR(8),
    IN p_nombreCliente VARCHAR(50),
    IN p_apellidoCliente VARCHAR(50),
    IN p_apodo VARCHAR(20),
    IN p_email VARCHAR(40),
    IN p_idUbicacion INT
)
BEGIN
    INSERT INTO Clientes (dni, nombre, apellido) VALUES (p_dni, p_nombreCliente, p_apellidoCliente);
    INSERT INTO Usuario (apodo, email, idUbicacion, idCliente)
    VALUES (p_apodo, p_email, p_idUbicacion, LAST_INSERT_ID());
END $$
--Realizar un SP que permita actualizar el stock de un producto.
CREATE PROCEDURE sp_ActualizarStockProducto(
    IN p_idProducto INT,
    IN p_cantidadVendida INT
)
BEGIN
    UPDATE Stock
    SET cantidad = cantidad - p_cantidadVendida,
        fechaActualizacion = CURRENT_TIMESTAMP
    WHERE idProducto = p_idProducto;
END $$
-- Generar comprobante
CREATE PROCEDURE sp_GenerarComprobante(IN p_idPedido INT)
BEGIN
    DECLARE v_idUsuario BIGINT;
    DECLARE v_formaPago VARCHAR(50);
    DECLARE v_total MEDIUMINT;

    SELECT idUsuario, formaPago, total INTO v_idUsuario, v_formaPago, v_total
    FROM Pedidos
    WHERE idPedido = p_idPedido;

    INSERT INTO Comprobante (idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal)
    VALUES (p_idPedido, v_idUsuario, CURDATE(), v_formaPago, 'Pagado', v_total);
END $$
--Realizar un SP que registre un nuevo envio.
CREATE PROCEDURE sp_HistorialDeUsuario(IN p_idUsuario BIGINT)
BEGIN
    SELECT hc.fecha, p.nombre AS producto, hc.precioUnitario, c.nombre AS categoria
    FROM HistorialCompra hc
    JOIN Productos p ON hc.idProducto = p.idProducto
    JOIN Categorias c ON hc.idCategoria = c.idCategoria
    WHERE hc.idUsuario = p_idUsuario;
END $$