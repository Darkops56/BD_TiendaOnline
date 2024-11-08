# Vista Previa de la Base de Datos

## DER:

```mermaid
erDiagram
    Pais {
        INT idPais
        VARCHAR nombre
    }

    Ubicacion {
        INT idUbicacion
        VARCHAR direccion
        VARCHAR ciudad
        INT idPais
    }

    Garantia {
        INT idGarantia
        VARCHAR nombre
        DATETIME caducidad
    }

    Empleador {
        VARCHAR nombre
        VARCHAR apellido
        BIGINT cuil
    }

    Valoracion {
        CHAR idValoracion
        FLOAT valoracion
    }

    Empleados {
        CHAR matricula
        VARCHAR nombre
        VARCHAR apellido
        BIGINT cuil
    }

    Categorias {
        INT idCategoria
        VARCHAR nombre
    }

    Usuario {
        BIGINT idUsuario
        VARCHAR apodo
        VARCHAR email
        VARCHAR ubicacion
        INT idPais
    }

    Comentario {
        INT idComentario
        BIGINT idUsuario
        CHAR idValoracion
        VARCHAR comentario
    }

    Clientes {
        CHAR dni
        VARCHAR nombre
        VARCHAR apellido
        BIGINT idUsuario
    }

    Contrato {
        INT idContrato
        CHAR matricula
        DATE fechaInicio
        DATE fechaFin
        MEDIUMINT salario
        BIGINT cuil
    }

    Productos {
        INT idProducto
        VARCHAR nombre
        DECIMAL precio
        INT stock
        VARCHAR descripcion
        BIGINT cuil
        INT idGarantia
        INT idCategoria
    }

    Inventario {
        INT idProducto
        INT idInventario
        MEDIUMINT cantidad
        DATE fechaIngreso
    }

    Pedidos {
        INT idPedido
        INT idProducto
        CHAR dni
        DATETIME fechaPedido
        VARCHAR direccion
    }

    Pedidos_Productos {
        INT idPedidosProductos
        INT idPedido
        INT idProducto
        TINYINT cantidad
    }

    HistorialCompra {
        INT idProducto
        INT idCategoria
        INT idPedido
        INT idUbicacion
        MEDIUMINT precioUnitario
        DATE fecha
    }

    Comprobante {
        INT numeroDeReferencia
        INT idPedido
        CHAR dni
        DATE fecha
        MEDIUMINT montoTotal
    }

    Envios {
        CHAR matricula
        DATETIME fechaEnvio
        INT idProducto
        INT idEnvio
    }

    Carrito {
        INT idCarrito
        DECIMAL precioTotal
        INT idProducto
        INT idPedido
    }

    Pais ||--o| Ubicacion: "Tiene"
    Pais ||--o| Usuario: "Tiene"
    Empleador ||--o| Productos: "Ofrece"
    Empleador ||--o| Contrato: "Contrata"
    Empleador ||--o| Envios: "Envía"
    Garantia ||--o| Productos: "Cubre"
    Valoracion ||--o| Comentario: "Es evaluado por"
    Comentario ||--o| Usuario: "Es escrito por"
    Comentario ||--o| Valoracion: "Tiene"
    Clientes ||--o| Usuario: "Es un"
    Productos ||--o| Pedidos: "Es parte de"
    Productos ||--o| Inventario: "Está en"
    Productos ||--o| Pedidos_Productos: "Está en"
    Productos ||--o| HistorialCompra: "Aparece en"
    Productos ||--o| Envios: "Es enviado"
    Productos ||--o| Carrito: "Está en"
    Pedidos ||--o| Clientes: "Es realizado por"
    Pedidos ||--o| Comprobante: "Es registrado en"
    Pedidos ||--o| HistorialCompra: "Está en"
    Pedidos ||--o| Pedidos_Productos: "Contiene"
    Pedidos_Productos ||--o| Productos: "Contiene"
    HistorialCompra ||--o| Ubicacion: "En"
    Carrito ||--o| Pedidos: "Está asociado con"
```

## Consultas SQL: 


### 1) Escribe una consulta que muestre el nombre y apellido de cada cliente junto con el número total de pedidos que ha realizado. Agrupa los resultados por el dni del cliente.

```sql
SELECT Categorias.nombre, COUNT(Productos.idProducto) AS total_productos
FROM Categorias
LEFT JOIN Productos ON Categorias.idCategoria = Productos.idCategoria
GROUP BY Categorias.nombre;
```

### 2) Crea una consulta que muestre el nombre de cada categoría y el total de productos que pertenecen a ella. Agrupa por el nombre de la categoría.

```sql
SELECT Categorias.nombre, COUNT(Productos.idProducto) AS total_productos
FROM Categorias
LEFT JOIN Productos ON Categorias.idCategoria = Productos.idCategoria
GROUP BY Categorias.nombre;
```

### 3) Escribe una consulta que muestre el nombre de cada empleador junto con el total de productos que ha registrado cuyo precio esté entre $100 y $500. Agrupar por el cuil.

```sql
SELECT Empleador.nombre, Empleador.apellido, COUNT(Productos.idProducto) AS total_productos
FROM Empleador
LEFT JOIN Productos ON Empleador.cuil = Productos.cuil
WHERE Productos.precio BETWEEN 100 AND 500
GROUP BY Empleador.cuil;

```

### 4) Escribe una consulta que devuelva el apodo de cada usuario y la valoración promedio de sus comentarios, siempre que la valoración sea mayor a 3. Agrupar los resultados por id usuario

```sql
SELECT Usuario.apodo, AVG(Valoracion.valoracion) AS valoracion_promedio
FROM Usuario
JOIN Comentario ON Usuario.idUsuario = Comentario.idUsuario
JOIN Valoracion ON Comentario.idValoracion = Valoracion.idValoracion
WHERE Valoracion.valoracion > 3
GROUP BY Usuario.idUsuario;
```

### 5) Escribe una consulta que muestre el nombre y apellido de cada cliente junto con el monto total de sus pedidos, solo si ese total es mayor a $500. Utiliza LEFT JOIN para unir Clientes y Pedidos, y agrupa los resultados por dni del cliente. Asegúrate de aplicar la condición del monto mínimo.

```sql
SELECT Clientes.nombre, Clientes.apellido, SUM(Productos.precio) AS monto_total
FROM Clientes
LEFT JOIN Pedidos ON Clientes.dni = Pedidos.dni
LEFT JOIN Productos ON Pedidos.idProducto = Productos.idProducto
GROUP BY Clientes.dni
HAVING monto_total > 500;

```

## Consultas DML:

### 1) Crear un nuevo país y dar de alta un usuario