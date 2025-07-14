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

    Envios {
        INT idEnvio PK
        CHAR(7) matricula FK
        DATETIME fechaEnvio 
        INT idProducto FK
    }

    HistorialCompra {
        INT idProducto PK, FK
        INT idCategoria PK, FK
        INT idPedido PK, FK
        BIGINT idUsuario FK
        INT idUbicacion FK
        MEDIUMINT precioUnitario
        DATE fecha
    }
    Registro{
        INT idRegistro PK
        INT idUsuario FK
        DATETIME fecha
    
    }
    Clientes {
        CHAR(8) dni PK
        VARCHAR(50) nombre
        VARCHAR(50) apellido
    }
    Carrito_Productos{
        INT_UNSIGNED idProducto PK, FK
        INT_UNSIGNED idCarrito PK, FK
    }
    Valoracion {
        CHAR(8) idValoracion PK
        FLOAT valoracion
    }
    Venta{
        BIGINT_UNSIGNED idVenta PK
        BIGINT_UNSIGNED idUsuario FK
        DATETIME fecha
        DECIMAL(10,2) total
        VARCHAR(50) metodoPago
        VARCHAR(50) estado
    }
    DetalleVenta{
        BIGINT_UNSIGNED idVenta PK
        BIGINT_UNSIGNED idUsuario FK
        DATETIME fecha
        DECIMAL(10,2) total
        VARCHAR(50) metodoPago
        VARCHAR(50) estado
    }
    Stock{
        BIGINT_UNSIGNED stock PK
        BIGINT_UNSIGNED idProducto FK
        INT_UNSIGNED cantidad
        DATETIME fechaActualizacion
    }
    Pedidos {
        INT idPedido PK
        INT idCarrito FK
        BIGINT idUsuario FK 
        DATETIME fechaPedido
        VARCHAR(100) direccion
        varchar(50) estado  
        VARCHAR(50) formaPago
        MEDIUMINT_UNSIGNED total 
    }

    Productos {
        INT idProducto PK
        VARCHAR(50) nombre
        DECIMAL(10) precio
        INT stock
        VARCHAR(5000) descripcion
        INT idInventario FK
        INT idGarantia FK 
        INT idCategoria FK
    }

    Ubicacion {
        INT idUbicacion PK
        VARCHAR(40) direccion
        VARCHAR(20) ciudad
        varchar(255) provincia 
        VARCHAR(15) codigoPostal
        INT idPais FK
    }

    Pais {
        INT idPais PK 
        VARCHAR(50) nombre
    }

    Inventario {
        INT idInventario PK
        MEDIUMINT cantidad
        DATE fechaIngreso
    }

    Usuario {
        BIGINT idUsuario PK
        VARCHAR(20) apodo
        VARCHAR(40) email
        VARCHAR(100) ubicacion
        INT idPais FK
        CHAR(8) dni FK
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

    Comprobante {
        INT numeroDeReferencia PK
        INT idPedido FK
        BIGINT idUsuario FK
        DATE fecha
        MEDIUMINT montoTotal
        VARCHAR(50) formaPago
        VARCHAR(50) estadoPago 
    }

    Pedidos_Productos {
        INT idPedido PK, FK
        INT idProducto PK, FK
    }

    Categorias {
        INT idCategoria PK
        VARCHAR(50) nombre
    }

    Comentario {
        INT idComentario PK
        BIGINT idUsuario FK
        CHAR(8) idValoracion FK
        VARCHAR(300) comentario
    }

    Carrito {
        INT idCarrito PK
        DECIMAL(10) precioTotal
        INT idProducto FK
    }

    Garantia {
        INT idGarantia PK
        VARCHAR(50) nombre
        VARCHAR(255) tipoGarantia
        VARCHAR(255) condiciones
        DATETIME caducidad
    }

    Envios }|--|| Ubicacion : ""
    Carrito ||--|{ Pedidos : ""
    Productos }|--o| Garantia : ""
    Envios }|--|| Empleados: ""
    HistorialCompra }|--|| Pedidos : ""
    HistorialCompra }o--|| Ubicacion : ""
    Clientes |o--o{ Usuario : ""
    Productos }|--o| Inventario : ""
    Usuario ||--o{ Pedidos : ""
    Usuario ||--o{ Comprobante : ""
    Productos ||--o{ Pedidos_Productos: ""
    Usuario }o--|| Pais : ""
    Pedidos_Productos }|--o| Pedidos : ""
    Pedidos }|--|| Comprobante : ""
    Comentario }o--|| Valoracion : ""
    Productos }o--o| Categorias : ""
    Carrito ||--o{ Productos : ""
    Ubicacion }o--|| Pais : ""
    Usuario ||--o{ Comentario : ""
    Envios ||--|| Valoracion : ""




    
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

### 2) Escribe una consulta que muestre el nombre de cada empleador junto con el total de productos que ha registrado cuyo precio esté entre $100 y $500. 

```sql
SELECT E.nombre, COUNT(P.idProducto) AS Total
FROM Empleador E
LEFT JOIN Productos P ON E.cuil = P.cuil
WHERE P.precio BETWEEN 100 AND 500
GROUP BY E.cuil;

```

### 3) Escribe una consulta que devuelva el apodo de cada usuario y la valoración promedio de sus comentarios, siempre que la valoración sea mayor a 3. Ordenar de mayor a menor.


```sql
SELECT U.apodo, AVG(V.valoracion)
FROM Usuario U
INNER JOIN Comentario C ON U.idUsuario = C.idUsuario
INNER JOIN Valoracion V ON V.idValoracion = C.idValoracion
WHERE V.valoracion > 3
GROUP BY apodo, V.idValoracion
ORDER BY valoracion DESC;

```

### 4) Escribe una consulta que muestre el apodo de cada usuario junto con el monto total de sus pedidos, solo si ese total es mayor a $500. Utiliza LEFT JOIN para unir Usuario y Pedidos. Ordenar de mayor a menor.

```sql
SELECT U.apodo AS Categoria, P.total AS Vendidos
FROM Usuario U
LEFT JOIN Pedidos P ON U.idUsuario = P.idUsuario
WHERE P.total > 500
ORDER BY total_vendidos DESC;

```

### 5) Obtener el apodo del usuario, el total de productos diferentes que ha comprado, el valor promedio de los productos comprados, y la cantidad total de pedidos realizados por cada usuario. Incluir también a aquellos usuarios que no hayan realizado pedidos. Mostrar solo los usuarios que han comprado más de 2 productos diferentes y cuyo promedio de precio de los productos comprados sea superior a $50. Ordenar el resultado de mayor a menor en base al total de productos diferentes.

```sql
SELECT U.apodo AS Apodo,
   	COUNT(DISTINCT PeP.idProducto) AS ProductosD,
   	AVG(P.total) AS Promedio,
   	COUNT(P.`idPedido`) AS Total
FROM Usuario U
LEFT JOIN Pedidos P ON P.idUsuario = P.idUsuario
LEFT JOIN Pedidos_Productos PeP ON P.idPedido = PeP.idPedido
LEFT JOIN Productos Pr ON PeP.idProducto = Pr.idProducto
WHERE PeP.idProducto IS NOT NULL
GROUP BY U.idUsuario
HAVING ProductosD > 2 AND Promedio > 50 OR COUNT(P.idPedido) = NULL
ORDER BY ProductosD DESC;

```
