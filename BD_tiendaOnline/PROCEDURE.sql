DELIMITER $$
--Registra un nuevo producto con inventario, garantía y categoría.
CREATE PROCEDURE RegistrarNuevoProducto (
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    Rdescripcion VARCHAR(5000),
    p_idInventario INT,
    p_idGarantia INT,
    p_idCategoria INT
)
BEGIN
    INSERT INTO Productos (nombre, precio, stock, descripcion, idInventario, idGarantia, idCategoria)
    VALUES (p_nombre, p_precio, p_stock, p_descripcion, p_idInventario, p_idGarantia, p_idCategoria);
END $$
--Actualiza el stock de un producto específico.
CREATE PROCEDURE ActualizarStock (
    p_idProducto INT,
    p_nuevoStock INT
)
BEGIN
    UPDATE Productos
    SET stock = p_nuevoStock
    WHERE idProducto = p_idProducto;
END $$
-- Muestra todos los pedidos hechos por un usuario.
CREATE PROCEDURE ListarPedidosPorUsuario (
    IN p_idUsuario BIGINT
)
BEGIN
    SELECT * FROM Pedidos
    WHERE idUsuario = p_idUsuario;
END $$
--Registra un envío de un producto por parte de un empleado.
CREATE PROCEDURE RegistrarEnvio (
    p_matricula CHAR(7),
    p_idProducto INT
)
BEGIN
    INSERT INTO Envios (matricula, fechaEnvio, idProducto)
    VALUES (p_matricula, NOW(), p_idProducto);
END $$