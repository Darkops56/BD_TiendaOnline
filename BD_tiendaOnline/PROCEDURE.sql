DELIMITER $$
--Realizar un SP que permita dar de alta un nuevo producto.
CREATE PROCEDURE RegistrarNuevoProducto (
    Nombre VARCHAR(50),
    Precio DECIMAL(10, 2),
    Stock INT,
    Descripcion VARCHAR(5000),
    IdInventario INT,
    IdGarantia INT,
    IdCategoria INT
)
BEGIN
    INSERT INTO Productos (nombre, precio, stock, descripcion, idInventario, idGarantia, idCategoria)
    VALUES (Nombre, Precio, Stock, Descripcion, IdInventario, IdGarantia, IdCategoria);
END $$
--Realizar un SP que permita actualizar el stock de un producto.
CREATE PROCEDURE ActualizarStock (
    IdProducto INT,
    NuevoStock INT
)
BEGIN
    UPDATE Productos
    SET stock = NuevoStock
    WHERE idProducto = IdProducto;
END $$
-- Realizar un SP que liste todos los pedidos de un usuario.
CREATE PROCEDURE ListarPedidosPorUsuario (
    IN IdUsuario BIGINT
)
BEGIN
    SELECT * FROM Pedidos
    WHERE idUsuario = IdUsuario;
END $$
--Realizar un SP que registre un nuevo envio.
CREATE PROCEDURE RegistrarEnvio (
    Matricula CHAR(7),
    IdProducto INT
)
BEGIN
    INSERT INTO Envios (matricula, fechaEnvio, idProducto)
    VALUES (Matricula, NOW(), IdProducto);
END $$