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
        INT idProducto PK
        INT idCategoria PK
        INT idPedido PK
        BIGINT idUsuario FK
        INT idUbicacion FK
        MEDIUMINT precioUnitario
        DATE fecha
    }

    Clientes {
        CHAR(8) dni PK
        VARCHAR(50) nombre
        VARCHAR(50) apellido
    }

    Valoracion {
        CHAR(8) idValoracion PK
        FLOAT valoracion
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
        TINYINT cantidad
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

### 2)Mostrá los 3 productos que más se vendieron (según cantidad de veces que aparecen en pedidos) junto con:

    su nombre

    el número de veces vendido

    el precio unitario promedio

    y el total recaudado (precio unitario × veces vendido)
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
