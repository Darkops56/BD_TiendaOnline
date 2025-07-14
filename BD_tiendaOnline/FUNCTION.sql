DELIMITER $$
--Realiza una SF que permita calcular el precio final del envio más el IVA (21%)
CREATE FUNCTION fn_CalcularTotalPedido(p_idPedido INT) RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE v_total DECIMAL(10,2);
    SELECT SUM(precioUnitario) INTO v_total
    FROM Pedidos_Productos pp
    JOIN Productos pr ON pr.idProducto = pp.idProducto
    WHERE pp.idPedido = p_idPedido;
    RETURN v_total;
END $$
--Realiza una funcion que devuelva el stock que tiene un producto.
CREATE FUNCTION fn_EstadoPago(p_idPedido INT) RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE v_estado VARCHAR(50);
    SELECT estadoPago INTO v_estado
    FROM Comprobante
    WHERE idPedido = p_idPedido;
    RETURN v_estado;
END$$
--Realizar un SF que permita saber la cantidad de pedidos hizo un usuario.
CREATE FUNCTION fn_StockDisponible(p_idProducto INT) RETURNS INT
READS SQL DATA
BEGIN
    DECLARE v_stock INT;
    SELECT cantidad INTO v_stock FROM Stock WHERE idProducto = p_idProducto;
    RETURN v_stock;
END $$
--Realizar un SF que permita saber el promedio de valoraciones.
CREATE FUNCTION fn_UsuarioTienePedidos(p_idUsuario BIGINT) RETURNS BOOLEAN
READS SQL DATA
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count FROM Pedidos WHERE idUsuario = p_idUsuario;
    RETURN v_count > 0;
END $$
--
CREATE FUNCTION fn_CalificacionPromedio(p_idUsuario BIGINT) RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE v_avg FLOAT;
    SELECT AVG(v.valoracion)
    INTO v_avg
    FROM Comentario c
    JOIN Valoracion v ON c.idValoracion = v.idValoracion
    WHERE c.idUsuario = p_idUsuario;
    RETURN v_avg;
END