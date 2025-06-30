--Devuelve el precio final con un 21% de IVA.
CREATE FUNCTION fCalcularPrecioConIVA (
    precio DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    RETURN precio * 1.21;
END $$
--Retorna el stock actual de un producto.
CREATE FUNCTION fn_ObtenerStockProducto (
    p_idProducto INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE resultado INT;
    SELECT stock INTO resultado
    FROM Productos
    WHERE idProducto = p_idProducto;
    RETURN resultado;
END $$
--Devuelve cuántos pedidos hizo un usuario.
CREATE FUNCTION fn_ObtenerCantidadPedidosPorUsuario (
    p_idUsuario BIGINT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE totalPedidos INT;
    SELECT COUNT(*) INTO totalPedidos
    FROM Pedidos
    WHERE idUsuario = p_idUsuario;
    RETURN totalPedidos;
END $$
--Devuelve la valoración promedio general de todos los productos.
CREATE FUNCTION ObtenerValoracionPromedio ()
RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE promedio FLOAT;
    SELECT AVG(valoracion) INTO promedio
    FROM Valoracion;
    RETURN promedio;
END;