DELIMITER $$
--Realiza una SF que permita calcular el precio final del envio más el IVA (21%)
CREATE FUNCTION CalcularTotalPedido(IdPedido INT) RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE Totalidad DECIMAL(10,2);
    SELECT SUM(precioUnitario) INTO Totalidad
    FROM Pedidos_Productos pp
    JOIN Productos pr USING (`idProducto`)
    WHERE pp.idPedido = IdPedido;
    RETURN Totalidad;
END $$
--Realiza una funcion que devuelva el stock que tiene un producto.
CREATE FUNCTION EstadoPago(IdPedido INT) RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE EstadoDelPago VARCHAR(50);
    SELECT estadoPago INTO EstadoDelPago
    FROM Comprobante
    WHERE idPedido = IdPedido;
    RETURN EstadoDelPago;
END $$
--Realizar un SF que permita saber la cantidad de pedidos hizo un usuario.
CREATE FUNCTION StockDisponible(IdProducto INT) RETURNS INT
READS SQL DATA
BEGIN
    DECLARE Stocks INT;
    SELECT cantidad INTO Stocks FROM Stock WHERE idProducto = IdProducto;
    RETURN Stocks;
END $$
--Realizar un SF que permita saber el promedio de valoraciones.
CREATE FUNCTION UsuarioTienePedidos(IdUsuario BIGINT) RETURNS BOOLEAN
READS SQL DATA
BEGIN
    DECLARE cantidadDePedidos INT;
    SELECT COUNT(*) INTO cantidadDePedidos FROM Pedidos WHERE idUsuario = IdUsuario;
    RETURN cantidadDePedidos > 0;
END $$
--
DELIMITER $$
CREATE FUNCTION CalificacionPromedio(IdUsuario BIGINT) RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE Promedio FLOAT;
    SELECT AVG(v.valoracion)
    INTO Promedio
    FROM Comentario c
    JOIN Valoracion v USING (`idValoracion`)
    WHERE c.idUsuario = IdUsuario;
    RETURN Promedio;
END $$