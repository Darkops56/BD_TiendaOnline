DELIMITER $$

-- Realizar un trigger que valide los mails que se registran a Usuario no sean iguales a uno que ya exista.
CREATE TRIGGER befInsertUsuario BEFORE INSERT ON Usuario
FOR EACH ROW
    begin
        SELECT email INTO @mails
        FROM `Usuario`;

        IF(NEW.email === @mails)
        THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Mail ya registrado";
    END $$
--
DELIMITER $$

CREATE TRIGGER AfterInsertPedido AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    CALL GenerarComprobante(NEW.idPedido);
END $$
--
DELIMITER $$
CREATE TRIGGER AfterInsertDetalleVenta AFTER INSERT ON DetalleVenta
FOR EACH ROW
BEGIN
    CALL ActualizarStockProducto(NEW.idProducto, NEW.cantidad);
END $$
--
DELIMITER $$
CREATE TRIGGER BeforeInsertComentario BEFORE INSERT ON Comentario
FOR EACH ROW
BEGIN
    IF NOT EXISTS (
        SELECT * FROM Valoracion WHERE idValoracion = NEW.idValoracion
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Valoración no válida';
    END IF;
END $$
-- Realizar un trigger que no permita ingresar valoraciones mayores a 5.
CREATE TRIGGER befInsertValoracion BEFORE INSERT ON Valoracion
FOR EACH ROW
    BEGIN
        IF(
        SELECT *
        FROM Comentario 
        WHERE idValoracion = NEW.idValoracion
        AND NEW.valoracion > 5;
        ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "La valoracion no puede ser mayor a 5";
    END $$
-- Realizar un trigger que haga un alta en comprobante despues de un insert en pedido.
DELIMITER $$
CREATE TRIGGER afInsertPedido AFTER INSERT ON Pedido
FOR EACH ROW
    BEGIN
        INSERT INTO Comprobante(idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal)
                    VALUES(NEW.idPedido, NEW.idUsuario, NOW(), NEW.formaPago, NEW.estado, NEW.total);
    END $$
-- Realizar una validacion al dar de alta Garantia, que no permita ingresar una fecha de caducidad inferior a la fecha actual.
CREATE TRIGGER befInsertGarantia BEFORE INSERT ON Garantia
FOR EACH ROW
    begin
        IF(NEW.caducidad < NOW()) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "La fecha de caducidad no puede ser menor a la actual";
    END $$