DELIMITER $$
--Realiza una SF que permita calcular el precio final del envio más el IVA (21%)
CREATE FUNCTION CalcularPrecioConIVA (
    precio DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    RETURN precio * 1.21;
END $$
--Realiza una funcion que devuelva el stock que tiene un producto.
CREATE FUNCTION ObtenerStockProducto (
    idP INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE resultado INT;
    SELECT stock INTO resultado
    FROM Productos
    WHERE idProducto = idP;
    RETURN resultado;
END $$
--Realizar un SF que permita saber la cantidad de pedidos hizo un usuario.
CREATE FUNCTION ObtenerCantidadPedidosPorUsuario (
    idU BIGINT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE totalPedidos INT;
    SELECT COUNT(*) INTO totalPedidos
    FROM Pedidos
    WHERE idUsuario = idU;
    RETURN totalPedidos;
END $$
--Realizar un SF que permita saber el promedio de valoraciones.
CREATE FUNCTION ObtenerValoracionPromedio ()
RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE promedio FLOAT;
    SELECT AVG(valoracion) INTO promedio
    FROM Valoracion;
    RETURN promedio;
END $$