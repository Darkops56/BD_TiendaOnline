DELIMITER $$
--Registra un nuevo producto con inventario, garantía y categoría.
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
--Actualiza el stock de un producto específico.
CREATE PROCEDURE ActualizarStock (
    IdProducto INT,
    NuevoStock INT
)
BEGIN
    UPDATE Productos
    SET stock = NuevoStock
    WHERE idProducto = IdProducto;
END $$
-- Muestra todos los pedidos hechos por un usuario.
CREATE PROCEDURE ListarPedidosPorUsuario (
    IN IdUsuario BIGINT
)
BEGIN
    SELECT * FROM Pedidos
    WHERE idUsuario = IdUsuario;
END $$
--Registra un envío de un producto por parte de un empleado.
CREATE PROCEDURE RegistrarEnvio (
    Matricula CHAR(7),
    IdProducto INT
)
BEGIN
    INSERT INTO Envios (matricula, fechaEnvio, idProducto)
    VALUES (Matricula, NOW(), IdProducto);
END $$