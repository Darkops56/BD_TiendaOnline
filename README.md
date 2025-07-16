<h1 align = "center">BD_TiendaOnline.</h1>
<br>

<div align = "center">

# ¿Quienes participaron en su creación? 

</div>

- ### Martinez Alina.
- ### Casimiro Enzo.
- ### Zerpa Sebastian.


## Veamos el DER de nuestra base de datos, para asi sintetizar y brindarles el contenido que ofrece:

<div align = "center">

```mermaid
erDiagram

    Pais {
        INT idPais PK
        VARCHAR(50) nombre
    }

    Ubicacion {
        INT idUbicacion PK
        VARCHAR(40) direccion
        VARCHAR(20) ciudad
        VARCHAR(100) provincia 
        VARCHAR(15) codigoPostal
        INT idPais FK
    }

    Clientes {
        INT_UNSIGNED idCliente PK
        CHAR(8) dni 
        VARCHAR(50) nombre
        VARCHAR(50) apellido
    }

    Usuario {
        BIGINT idUsuario PK
        VARCHAR(20) apodo
        VARCHAR(40) email
        INT idUbicacion FK
        INT idCliente FK
    }

    Registro {
        BIGINT idRegistro PK
        BIGINT idUsuario FK
        DATE fechaRegistro
    }

    Valoracion {
        CHAR(8) idValoracion PK
        FLOAT valoracion
    }

    Comentario {
        INT idComentario PK
        BIGINT idUsuario FK
        CHAR(8) idValoracion FK
        VARCHAR(300) comentario
    }

    Empleados {
        CHAR(7) matricula PK
        VARCHAR(50) nombre
        VARCHAR(50) apellido
        VARCHAR(100) puesto
        DATE fechaIngreso
        INT_UNSIGNED salario
        DATE contrato
    }

    Inventario {
        INT idInventario PK
        MEDIUMINT cantidad
        DATE fechaIngreso
    }

    Garantia {
        INT idGarantia PK
        VARCHAR(50) nombre
        VARCHAR(100) tipoGarantia
        DATETIME caducidad  
        VARCHAR(100) condiciones
    }

    Categorias {
        INT idCategoria PK
        VARCHAR(50) nombre
    }

    Productos {
        INT idProducto PK
        VARCHAR(50) nombre
        DECIMAL(10_2) precio
        VARCHAR(5000) descripcion
        INT idInventario FK
        INT idGarantia FK 
        INT idCategoria FK
    }

    Stock {
        BIGINT_UNSIGNED idStock PK
        INT_UNSIGNED idProducto FK
        INT_UNSIGNED cantidad
        DATETIME fechaActualizacion
    }

    Carrito {
        INT idCarrito PK
        DECIMAL(10_2) precioTotal
        INT idProducto FK
        INT idUsuario FK
    }

    Carrito_Productos {
        INT idProducto PK, FK
        INT idCarrito PK, FK
    }

    Pedidos {
        INT idPedido PK
        BIGINT idUsuario FK
        INT idCarrito FK
        DATETIME fechaPedido
        VARCHAR(100) direccion
        VARCHAR(50) estado  
        VARCHAR(50) formaPago
        MEDIUMINT_UNSIGNED total 
    }

    Pedidos_Productos {
        INT idPedido PK, FK
        INT idProducto PK, FK
    }

    HistorialCompra {
        INT idProducto PK
        INT idCategoria PK
        INT idPedido PK
        BIGINT idUsuario FK
        INT idUbicacion FK
        MEDIUMINT precioUnitario
        DATE fecha
    }

    Comprobante {
        INT numeroDeReferencia PK
        INT idPedido FK
        BIGINT idUsuario FK
        DATE fecha
        VARCHAR(50) formaPago
        VARCHAR(50) estadoPago
        MEDIUMINT montoTotal
    }

    Envios {
        INT idEnvio PK
        CHAR(7) matricula FK
        DATETIME fechaEnvio
        INT idProducto FK
    }

    Venta {
        BIGINT_UNSIGNED idVenta PK
        BIGINT_UNSIGNED idUsuario FK
        DATETIME fecha
        DECIMAL(10) total
        VARCHAR(50) metodoPago
        VARCHAR(50) estado
    }

    DetalleVenta {
        BIGINT_UNSIGNED idDetalle PK
        BIGINT_UNSIGNED idVenta FK
        INT_UNSIGNED idProducto FK
        INT_UNSIGNED cantidad
        DECIMAL(10_2) precioUnitario
    }

    Pais ||--o{ Ubicacion : contiene
    Ubicacion ||--o{ Usuario : tiene
    Clientes ||--o{ Usuario : registrado
    Usuario ||--o{ Registro : genera
    Usuario ||--o{ Comentario : escribe
    Valoracion ||--o{ Comentario : califica
    Usuario ||--o{ Pedidos : realiza
    Usuario ||--o{ Comprobante : recibe
    Usuario ||--o{ Venta : realiza
    Empleados ||--o{ Envios : realiza
    Productos ||--|| Envios : enviado
    Inventario ||--o{ Productos : provee
    Garantia ||--o{ Productos : cubre
    Categorias ||--o{ Productos : agrupa
    Productos ||--o{ Stock : gestiona
    Productos ||--o{ DetalleVenta : vendido_en
    Venta ||--o{ DetalleVenta : incluye
    Carrito ||--o{ Carrito_Productos : contiene
    Productos ||--o{ Carrito_Productos : "está_en"
    Carrito ||--o{ Pedidos : usado_en
    Pedidos ||--o{ Pedidos_Productos : incluye
    Productos ||--o{ Pedidos_Productos : parte_de
    Pedidos ||--|| Comprobante : comprobado_por
    HistorialCompra ||--|| Pedidos : historizado
    HistorialCompra ||--|| Productos : refiere_a
    HistorialCompra ||--|| Ubicacion : entregado_en


    
```

</div>


## Un par de consultas Ejemplo sobre nuestra base de datos: 


### 1) Escribe una consulta que muestre el nombre del usuario junto con el número total de pedidos que ha realizado.

```sql
SELECT
	U.apodo AS Usuario,
	COUNT(p.idPedido) AS Total
FROM Usuario U
JOIN Pedidos p ON U.idUsuario = p.idUsuario 
GROUP BY U.idUsuario;

```

### 2)Mostrá los 3 productos que más se vendieron (según cantidad de veces que aparecen en pedidos) junto con: su nombre, el número de veces vendido, el precio unitario promedio y el total recaudado (precio unitario × veces vendido)
```sql
SELECT 
    P.nombre AS Producto,
    COUNT(H.idProducto) AS VecesVendido,
    AVG(H.precioUnitario) AS PrecioPromedio,
    SUM(H.precioUnitario) AS TotalRecaudado
FROM HistorialCompra H
JOIN Productos P ON H.idProducto = P.idProducto
GROUP BY H.idProducto, P.nombre
ORDER BY VecesVendido DESC
LIMIT 3;


```

### 3) Escribe una consulta que devuelva el apodo de cada usuario y la valoración promedio de sus comentarios, siempre que la valoración sea mayor a 3. Ordenar de mayor a menor.


```sql
SELECT U.apodo, AVG(V.valoracion) AS PromedioValoracion
FROM Usuario U
INNER JOIN Comentario C ON U.idUsuario = C.idUsuario
INNER JOIN Valoracion V ON V.idValoracion = C.idValoracion
WHERE V.valoracion > 3
GROUP BY U.apodo
ORDER BY PromedioValoracion DESC;

```

### 4) Escribe una consulta que muestre el apodo de cada usuario junto con el monto total de sus pedidos, solo si ese total es mayor a $500. Utiliza LEFT JOIN para unir Usuario y Pedidos. Ordenar de mayor a menor.

```sql
SELECT U.apodo AS Usuario, SUM(P.total) AS TotalPedidos
FROM Usuario U
LEFT JOIN Pedidos P ON U.idUsuario = P.idUsuario
GROUP BY U.apodo
HAVING SUM(P.total) > 500
ORDER BY TotalPedidos DESC;

```

### 5) Obtener el apodo del usuario, el total de productos diferentes que ha comprado, el valor promedio de los productos comprados, y la cantidad total de pedidos realizados por cada usuario. Incluir también a aquellos usuarios que no hayan realizado pedidos. Mostrar solo los usuarios que han comprado más de 2 productos diferentes y cuyo promedio de precio de los productos comprados sea superior a $50. Ordenar el resultado de mayor a menor en base al total de productos diferentes.

```sql
SELECT 
    U.apodo AS Apodo,
    COUNT(DISTINCT Pr.idProducto) AS ProductosDiferentes,
    AVG(Pr.precio) AS PromedioPrecioProductos,
    COUNT(DISTINCT P.idPedido) AS TotalPedidos
FROM Usuario U
LEFT JOIN Pedidos P ON U.idUsuario = P.idUsuario
LEFT JOIN Pedidos_Productos PP ON P.idPedido = PP.idPedido
LEFT JOIN Productos Pr ON PP.idProducto = Pr.idProducto
GROUP BY U.idUsuario
HAVING ProductosDiferentes > 2 AND PromedioPrecioProductos > 50
ORDER BY ProductosDiferentes DESC;

```
## Stored Procedure: Consignas y desarrollo

### Crear un SP que registre un cliente y su usuario asociado
```sql
DELIMITER $$

CREATE PROCEDURE RegistrarUsuario(
    Dni CHAR(8),
    NombreCliente VARCHAR(50),
    ApellidoCliente VARCHAR(50),
    Apodo VARCHAR(20),
    Email VARCHAR(40),
    IdUbicacion INT
)
BEGIN
    INSERT INTO Clientes (dni, nombre, apellido) VALUES (Dni, NombreCliente, ApellidoCliente);
    INSERT INTO Usuario (apodo, email, idUbicacion, idCliente) VALUES (Apodo, Email, IdUbicacion, LAST_INSERT_ID());
END $$
```

### Realizar un SP que permita actualizar el stock de un producto.
```sql
DELIMITER $$
CREATE PROCEDURE ActualizarStockProducto(
    IdProducto INT,
    CantidadVendida INT
)
BEGIN
    UPDATE Stock
    SET cantidad = cantidad - CantidadVendida,
        fechaActualizacion = CURRENT_TIMESTAMP
    WHERE idProducto = IdProducto;
END $$
```
### Realizar un SP qel cual haga un alta en comprobante
```sql
DELIMITER $$
CREATE PROCEDURE GenerarComprobante(IdPedido INT)
BEGIN
    DECLARE IdUsuario BIGINT;
    DECLARE FormaPago VARCHAR(50);
    DECLARE Total MEDIUMINT;

    SELECT idUsuario, formaPago, total INTO IdUsuario, FormaPago, Total
    FROM Pedidos
    WHERE idPedido = IdPedido;

    INSERT INTO Comprobante (idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal)
    VALUES (IdPedido, IdUsuario, CURDATE(), FormaPago, 'Pagado', Total);
END $$
```

### Realizar un SP que registre un nuevo envio.
```sql
DELIMITER $$
CREATE PROCEDURE HistorialDeUsuario(IdUsuario BIGINT)
BEGIN
    SELECT hc.fecha, p.nombre AS producto, hc.precioUnitario, c.nombre AS categoria
    FROM HistorialCompra hc
    JOIN Productos p USING (`idProducto`)
    JOIN Categorias c USING (`idCategoria`)
    WHERE hc.idUsuario = p_idUsuario;
END $$
```
## Stored Functions: Consignas y desarrollo

### Realiza una SF que permita calcular el precio final del envio más el IVA (21%)
```sql
DELIMITER $$
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
```
### Realiza una funcion que devuelva el stock que tiene un producto.
```sql
DELIMITER $$
CREATE FUNCTION EstadoPago(IdPedido INT) RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE EstadoDelPago VARCHAR(50);
    SELECT estadoPago INTO EstadoDelPago
    FROM Comprobante
    WHERE idPedido = IdPedido;
    RETURN EstadoDelPago;
END $$
```

### Realizar un SF que permita saber la cantidad de pedidos hizo un usuario.
```sql
DELIMITER $$
CREATE FUNCTION StockDisponible(IdProducto INT) RETURNS INT
READS SQL DATA
BEGIN
    DECLARE Stocks INT;
    SELECT cantidad INTO Stocks FROM Stock WHERE idProducto = IdProducto;
    RETURN Stocks;
END $$
```

### Realizar un SF que permita saber el promedio de valoraciones.
```sql
DELIMITER $$
CREATE FUNCTION UsuarioTienePedidos(IdUsuario BIGINT) RETURNS BOOLEAN
READS SQL DATA
BEGIN
    DECLARE cantidadDePedidos INT;
    SELECT COUNT(*) INTO cantidadDePedidos FROM Pedidos WHERE idUsuario = IdUsuario;
    RETURN cantidadDePedidos > 0;
END $$
```
### Crear una función que retorne el promedio de las valoraciones recibidas en sus comentarios.
```sql
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
```
## Triggers: Consignas y desarrollo

### Realizar un trigger que valide los mails que se registran a Usuario no sean iguales a uno que ya exista.
```sql
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
```

### Crear un trigger que genere un comprobante al crear un pedido.

```sql
DELIMITER $$
CREATE TRIGGER AfterInsertPedido AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    CALL GenerarComprobante(NEW.idPedido);
END $$
```

### Crear un trigger que descuente stock al agregar un detalle de venta.
```sql
DELIMITER $$
CREATE TRIGGER AfterInsertDetalleVenta AFTER INSERT ON DetalleVenta
FOR EACH ROW
BEGIN
    CALL ActualizarStockProducto(NEW.idProducto, NEW.cantidad);
END $$
```

### Crear un trigger que, antes de insertar un comentario, valide que el idValoracion ingresado exista en la tabla Valoracion, y si no existe, cancele la operación que diga "Valoracion no válida"
```sql
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
```

### Realizar un trigger que no permita ingresar valoraciones mayores a 5.
```sql
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
```
### Realizar un trigger que haga un alta en comprobante despues de un insert en pedido.
```sql
DELIMITER $$
CREATE TRIGGER afInsertPedido AFTER INSERT ON Pedido
FOR EACH ROW
    BEGIN
        INSERT INTO Comprobante(idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal)
                    VALUES(NEW.idPedido, NEW.idUsuario, NOW(), NEW.formaPago, NEW.estado, NEW.total);
    END $$
```

### Realizar una validacion al dar de alta Garantia, que no permita ingresar una fecha de caducidad inferior a la fecha actual.
```sql
CREATE TRIGGER befInsertGarantia BEFORE INSERT ON Garantia
FOR EACH ROW
    begin
        IF(NEW.caducidad < NOW()) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "La fecha de caducidad no puede ser menor a la actual";
    END $$
```
