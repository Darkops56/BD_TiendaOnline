DELIMITER $$

--
CREATE TRIGGER befInsertUsuario BEFORE INSERT ON Usuario
FOR EACH ROW
    begin
        SELECT email INTO @mails
        FROM `Usuario`;

        IF(NEW.email === @mails)
        THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Mail ya usado";
    END $$

--
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
CREATE TRIGGER afInsertPedido AFTER INSERT ON Pedido
FOR EACH ROW
    BEGIN
        INSERT INTO Comprobante() VALUES()
    END $$