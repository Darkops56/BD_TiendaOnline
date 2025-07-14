INSERT INTO Pais (idPais, nombre) VALUES
(1, 'Argentina'), (2, 'Brasil'), (3, 'Uruguay'), (4, 'Chile'),
(5, 'Paraguay'), (6, 'Bolivia'), (7, 'Perú'), (8, 'Colombia'),
(9, 'México'), (10, 'España');
INSERT INTO Ubicacion (idUbicacion, direccion, ciudad, provincia, codigoPostal, idPais) VALUES
(1, 'Calle Falsa 123', 'Buenos Aires', 'Buenos Aires', '1000', 1),
(2, 'Av. Rivadavia 456', 'La Plata', 'Buenos Aires', '1900', 1),
(3, 'San Martín 789', 'Rosario', 'Santa Fe', '2000', 1),
(4, 'Mitre 101', 'Mendoza', 'Mendoza', '5500', 1),
(5, 'Av. Córdoba 111', 'Córdoba', 'Córdoba', '5000', 1),
(6, 'Rua A 1', 'São Paulo', 'SP', '01310-000', 2),
(7, 'Rua B 2', 'Rio de Janeiro', 'RJ', '20000-000', 2),
(8, 'Artigas 56', 'Montevideo', 'Montevideo', '11000', 3),
(9, 'Independencia 99', 'Asunción', 'Central', '1200', 5),
(10, 'Gran Vía 123', 'Madrid', 'Madrid', '28013', 10);
INSERT INTO Garantia (nombre, tipoGarantia, caducidad, condiciones) VALUES
('Estándar', '6 meses', '2026-01-01', 'Fallas técnicas'),
('Extendida', '1 año', '2026-06-01', 'Cubre defectos de fábrica'),
('Premium', '2 años', '2027-01-01', 'Todo incluido'),
('Básica', '3 meses', '2025-12-01', 'Solo software'),
('Limitada', '6 meses', '2026-05-01', 'Sin cobertura física'),
('Full', '18 meses', '2027-06-15', 'Todo menos batería'),
('Internacional', '1 año', '2026-08-10', 'Solo si se activa en origen'),
('Pro', '2 años', '2027-09-01', 'Daño total o parcial'),
('Silver', '1 año', '2026-03-01', 'Limitado por zonas'),
('Gold', '3 años', '2028-01-01', 'Cobertura completa');
INSERT INTO Valoracion (idValoracion, valoracion) VALUES
('VAL-001', 5.0), ('VAL-002', 4.5), ('VAL-003', 4.0), ('VAL-004', 3.5),
('VAL-005', 3.0), ('VAL-006', 2.5), ('VAL-007', 2.0), ('VAL-008', 1.5),
('VAL-009', 1.0), ('VAL-010', 0.5);
INSERT INTO Empleados (matricula, nombre, apellido, puesto, fechaIngreso, salario, contrato) VALUES
('EMP0001', 'Juan', 'Pérez', 'Repartidor', '2022-01-10', 100000, '2022-01-01'),
('EMP0002', 'Laura', 'Gómez', 'Ventas', '2023-02-01', 120000, '2023-01-01'),
('EMP0003', 'Pedro', 'Martínez', 'Soporte', '2023-05-10', 110000, '2023-05-01'),
('EMP0004', 'María', 'Suárez', 'Logística', '2022-09-20', 105000, '2022-09-01'),
('EMP0005', 'Tomás', 'Díaz', 'Stock', '2021-11-10', 95000, '2021-10-01'),
('EMP0006', 'Sofía', 'Ruiz', 'Administración', '2023-06-15', 115000, '2023-06-01'),
('EMP0007', 'Luciano', 'Vega', 'Contabilidad', '2024-01-12', 98000, '2024-01-01'),
('EMP0008', 'Ana', 'Moreno', 'RRHH', '2022-04-05', 102000, '2022-04-01'),
('EMP0009', 'Martina', 'Ferrer', 'Técnico', '2023-07-10', 113000, '2023-07-01'),
('EMP0010', 'Bruno', 'Ramos', 'Logística', '2024-02-01', 108000, '2024-02-01');
INSERT INTO Clientes (dni, nombre, apellido) VALUES
('12345678', 'Lucas', 'Torres'), ('87654321', 'Martina', 'Paz'),
('11223344', 'Agustín', 'Gómez'), ('44332211', 'Florencia', 'Arias'),
('55667788', 'Matías', 'Bustos'), ('88776655', 'Camila', 'Ríos'),
('33445566', 'Emiliano', 'Sánchez'), ('66554433', 'Micaela', 'Méndez'),
('77889900', 'Tomás', 'Luna'), ('00998877', 'Sofía', 'Navarro');
INSERT INTO Usuario (apodo, email, idUbicacion, idCliente) VALUES
('lucast', 'lucas@gmail.com', 1, 1), ('martup', 'martina@gmail.com', 2, 2),
('agusg', 'agustin@gmail.com', 3, 3), ('floraa', 'flor@gmail.com', 4, 4),
('mati88', 'matias@gmail.com', 5, 5), ('cami.r', 'camila@gmail.com', 6, 6),
('emi_s', 'emi@gmail.com', 7, 7), ('mica_13', 'mica@gmail.com', 8, 8),
('tluna', 'tomas@gmail.com', 9, 9), ('sofi.n', 'sofia@gmail.com', 10, 10);
INSERT INTO Registro (idUsuario, fechaRegistro) VALUES
(1, '2023-01-01'), (2, '2023-02-01'), (3, '2023-03-01'), (4, '2023-04-01'),
(5, '2023-05-01'), (6, '2023-06-01'), (7, '2023-07-01'), (8, '2023-08-01'),
(9, '2023-09-01'), (10, '2023-10-01');
INSERT INTO Comentario (idComentario, idUsuario, idValoracion, comentario) VALUES
(1, 1, 'VAL-001', 'Excelente producto!'),
(2, 2, 'VAL-002', 'Muy buena atención'),
(3, 3, 'VAL-003', 'Podría mejorar el envío'),
(4, 4, 'VAL-004', 'Buen precio'),
(5, 5, 'VAL-005', 'Me llegó fallado'),
(6, 6, 'VAL-006', 'Fácil de comprar'),
(7, 7, 'VAL-007', 'No me gustó'),
(8, 8, 'VAL-008', 'Regular'),
(9, 9, 'VAL-009', 'Producto diferente'),
(10, 10, 'VAL-010', 'Muy mala calidad');
INSERT INTO Inventario (idInventario, cantidad, fechaIngreso) VALUES
(1, 10, '2024-01-01'), (2, 15, '2024-01-15'), (3, 5, '2024-02-01'),
(4, 8, '2024-02-15'), (5, 12, '2024-03-01'), (6, 20, '2024-03-10'),
(7, 6, '2024-03-20'), (8, 14, '2024-04-01'), (9, 9, '2024-04-10'),
(10, 25, '2024-05-01');
INSERT INTO Categorias (nombre) VALUES
('Monitores'), ('Teclados'), ('Mouse'), ('Auriculares'), ('Sillas gamers'),
('Placas de video'), ('Componentes PC');
INSERT INTO Productos (nombre, precio, descripcion, idInventario, idGarantia, idCategoria) VALUES
('PlayStation 5', 599999.99, 'Consola Sony PS5', 1, 1, 1),
('Xbox Series X', 549999.99, 'Consola Microsoft', 2, 2, 1),
('DualSense', 89999.99, 'Joystick PS5', 3, 3, 2),
('Mouse Gamer', 25000.00, 'Mouse RGB', 4, 4, 3),
('Auriculares HyperX', 70000.00, 'Sonido envolvente', 5, 5, 4),
('Silla Redragon', 120000.00, 'Silla ergonómica', 6, 6, 5),
('Monitor 144hz', 150000.00, 'Gaming Monitor', 7, 7, 6),
('RTX 4070', 850000.00, 'Placa Nvidia', 8, 8, 7),
('Teclado mecánico', 45000.00, 'Switch red', 9, 9, 2),
('SSD 1TB', 60000.00, 'Almacenamiento', 10, 10, 7);
INSERT INTO Carrito (idCarrito, precioTotal, idProducto, idUsuario) VALUES
(1, 599999.99, 1, 1), (2, 549999.99, 2, 2), (3, 89999.99, 3, 3),
(4, 25000.00, 4, 4), (5, 70000.00, 5, 5), (6, 120000.00, 6, 6),
(7, 150000.00, 7, 7), (8, 850000.00, 8, 8), (9, 45000.00, 9, 9),
(10, 60000.00, 10, 10);
INSERT INTO Carrito_Productos (idProducto, idCarrito) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);
INSERT INTO Pedidos (idUsuario, idCarrito, estado, fechaPedido, direccion, formaPago, total) VALUES
(1, 1, 'Entregado', '2024-06-01 10:00:00', 'Calle Falsa 123', 'Tarjeta', 599999),
(2, 2, 'Entregado', '2024-06-02 11:00:00', 'Av. Rivadavia 456', 'Tarjeta', 549999),
(3, 3, 'Entregado', '2024-06-03 12:00:00', 'San Martín 789', 'Efectivo', 89999),
(4, 4, 'Cancelado', '2024-06-04 13:00:00', 'Mitre 101', 'MercadoPago', 25000),
(5, 5, 'Pendiente', '2024-06-05 14:00:00', 'Av. Córdoba 111', 'Tarjeta', 70000),
(6, 6, 'En camino', '2024-06-06 15:00:00', 'Rua A 1', 'Efectivo', 120000),
(7, 7, 'Entregado', '2024-06-07 16:00:00', 'Rua B 2', 'Tarjeta', 150000),
(8, 8, 'Pendiente', '2024-06-08 17:00:00', 'Artigas 56', 'MercadoPago', 850000),
(9, 9, 'Entregado', '2024-06-09 18:00:00', 'Independencia 99', 'Efectivo', 45000),
(10, 10, 'En camino', '2024-06-10 19:00:00', 'Gran Vía 123', 'Tarjeta', 60000);
INSERT INTO Pedidos_Productos (idPedido, idProducto) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);
INSERT INTO HistorialCompra (idProducto, idCategoria, idPedido, idUsuario, idUbicacion, precioUnitario, fecha) VALUES
(1, 1, 1, 1, 1, 599999, '2024-06-01'),
(2, 1, 2, 2, 2, 549999, '2024-06-02'),
(3, 2, 3, 3, 3, 89999, '2024-06-03'),
(4, 3, 4, 4, 4, 25000, '2024-06-04'),
(5, 4, 5, 5, 5, 70000, '2024-06-05'),
(6, 5, 6, 6, 6, 120000, '2024-06-06'),
(7, 6, 7, 7, 7, 150000, '2024-06-07'),
(8, 7, 8, 8, 8, 850000, '2024-06-08'),
(9, 2, 9, 9, 9, 45000, '2024-06-09'),
(10, 7, 10, 10, 10, 60000, '2024-06-10');
INSERT INTO Comprobante (idPedido, idUsuario, fecha, formaPago, estadoPago, montoTotal) VALUES
(1, 1, '2024-06-01', 'Tarjeta', 'Pagado', 599999),
(2, 2, '2024-06-02', 'Tarjeta', 'Pagado', 549999),
(3, 3, '2024-06-03', 'Efectivo', 'Pagado', 89999),
(4, 4, '2024-06-04', 'MercadoPago', 'Cancelado', 25000),
(5, 5, '2024-06-05', 'Tarjeta', 'Pendiente', 70000),
(6, 6, '2024-06-06', 'Efectivo', 'Pendiente', 120000),
(7, 7, '2024-06-07', 'Tarjeta', 'Pagado', 150000),
(8, 8, '2024-06-08', 'MercadoPago', 'Pendiente', 850000),
(9, 9, '2024-06-09', 'Efectivo', 'Pagado', 45000),
(10, 10, '2024-06-10', 'Tarjeta', 'Pagado', 60000);
INSERT INTO Envios (matricula, fechaEnvio, idProducto) VALUES
<<<<<<< HEAD
('EMP0001', '2024-06-01 15:00:00', 1), ('EMP0002', '2024-06-02 16:00:00', 2),
('EMP0003', '2024-06-03 17:00:00', 3), ('EMP0004', '2024-06-04 18:00:00', 4),
('EMP0005', '2024-06-05 19:00:00', 5), ('EMP0006', '2024-06-06 20:00:00', 6),
('EMP0007', '2024-06-07 21:00:00', 7), ('EMP0008', '2024-06-08 22:00:00', 8),
('EMP0009', '2024-06-09 23:00:00', 9), ('EMP0010', '2024-06-10 09:00:00', 10);
INSERT INTO Venta (idUsuario, total, metodoPago, estado) VALUES
(1, 599999.99, 'Tarjeta', 'Pagado'), (2, 549999.99, 'Tarjeta', 'Pagado'),
(3, 89999.99, 'Efectivo', 'Pagado'), (4, 25000.00, 'MercadoPago', 'Cancelado'),
(5, 70000.00, 'Tarjeta', 'Pendiente'), (6, 120000.00, 'Efectivo', 'Pendiente'),
(7, 150000.00, 'Tarjeta', 'Pagado'), (8, 850000.00, 'MercadoPago', 'Pendiente'),
(9, 45000.00, 'Efectivo', 'Pagado'), (10, 60000.00, 'Tarjeta', 'Pagado');
INSERT INTO DetalleVenta (idVenta, idProducto, cantidad, precioUnitario) VALUES
(1, 1, 1, 599999.99), (2, 2, 1, 549999.99), (3, 3, 1, 89999.99),
(4, 4, 1, 25000.00), (5, 5, 1, 70000.00), (6, 6, 1, 120000.00),
(7, 7, 1, 150000.00), (8, 8, 1, 850000.00), (9, 9, 1, 45000.00),
(10, 10, 1, 60000.00);
INSERT INTO Stock (idProducto, cantidad) VALUES
(1, 5), (2, 3), (3, 7), (4, 10), (5, 8),
(6, 6), (7, 4), (8, 2), (9, 11), (10, 9);
=======
('G4Y-B01', '2024-03-20 10:30:00', 6576), 
('G4Y-B02', '2024-03-21 11:00:00', 6577), 
('G4Y-B03', '2024-03-22 12:15:00', 6578), 
('G4Y-B04', '2024-03-23 13:30:00', 6579), 
('G4Y-B05', '2024-03-24 14:45:00', 6580), 
('G4Y-B06', '2024-03-25 10:00:00', 6581), 
('G4Y-B07', '2024-03-26 11:20:00', 6582), 
('G4Y-B08', '2024-03-27 12:35:00', 6583), 
('G4Y-B09', '2024-03-28 13:50:00', 6584), 
('G4Y-B10', '2024-03-29 15:00:00', 6585);

INSERT INTO Carrito (idCarrito, precioTotal, idProducto) VALUES
(1, 320, 6576), 
(2, 120, 6577), 
(3, 450, 6578), 
(4, 80, 6579),  
(5, 60, 6580),  
(6, 200, 6581), 
(7, 400, 6582), 
(8, 150, 6583), 
(9, 110, 6584), 
(10, 300, 6585); 

INSERT INTO Pedidos (idPedido, idCarrito, idUsuario, estado, fechaPedido, direccion, formaPago, total) 
VALUES 
(1, 1, 7016, 'Pendiente', '2024-03-10 15:30:00', 'Calle 123, Ciudad A', 'Tarjeta', 1000),
(2, 2, 7001, 'Pendiente', '2024-03-11 16:00:00', 'Avenida 456, Ciudad B', 'Efectivo', 200),
(3, 3, 7002, 'Pendiente', '2024-03-12 14:15:00', 'Boulevard 789, Ciudad C', 'Tarjeta', 670),
(4, 4, 7003, 'Pendiente', '2024-03-13 17:30:00', 'Calle 101, Ciudad D', 'Transferencia', 990.99),
(5, 5, 7004, 'Pendiente', '2024-03-14 13:45:00', 'Avenida 202, Ciudad E', 'Tarjeta', 1040.98),
(6, 6, 7005, 'Pendiente', '2024-03-15 10:00:00', 'Pasaje 303, Ciudad F', 'Efectivo', 320),
(7, 7, 7006, 'Pendiente', '2024-03-16 11:20:00', 'Camino 404, Ciudad G', 'Tarjeta', 599.99),
(8, 8, 7007, 'Pendiente', '2024-03-17 15:50:00', 'Callejón 505, Ciudad H', 'Transferencia', 100),
(9, 9, 7008, 'Pendiente', '2024-03-18 16:35:00', 'Paseo 606, Ciudad I', 'Efectivo', 671.58),
(10, 10, 7009, 'Pendiente', '2024-03-19 12:00:00', 'Ruta 707, Ciudad J', 'Tarjeta', 820.87);




INSERT INTO HistorialCompra (idProducto, idCategoria, idPedido, idUbicacion, idUsuario, precioUnitario, fecha) 
VALUES 
(6576, 9013, 1, 201, 2008, 320, '2024-03-10'),
(6577, 9014, 2, 202, 5456, 120, '2024-03-11'), 
(6578, 9015, 3, 203, 8371, 450, '2024-03-12'), 
(6579, 9016, 4, 204, 7012, 80, '2024-03-13'), 
(6580, 9017, 5, 205, 7017, 60, '2024-03-14'), 
(6581, 9018, 6, 206, 7014, 200, '2024-03-15'), 
(6582, 9019, 7, 207, 7011, 400, '2024-03-16'), 
(6583, 9020, 8, 208, 7006, 150, '2024-03-17'), 
(6584, 9021, 9, 209, 7001, 110, '2024-03-18'), 
(6585, 9022, 10, 210, 7020, 300, '2024-03-19'); 

INSERT INTO Comprobante (numeroDeReferencia, idUsuario, formaPago, estadoPago, idPedido, fecha, montoTotal) 
VALUES 
(20241234, 2008, 'Tarjeta', 'Pendiente', 1, '2024-03-10', 519.40),
(20256232, 5456, 'Efectivo', 'Pendiente', 2, '2024-03-11', 1823.20),
(20256399, 7020, 'Tarjeta', 'Pendiente', 3, '2024-03-12', 4123.90),
(40001123, 7005, 'Transferencia', 'Pendiente', 4, '2024-03-13', 600.50),
(40005123, 7019, 'Tarjeta', 'Pendiente', 5, '2024-03-14', 590.00),
(40007556, 7012, 'Efectivo', 'Pendiente', 6, '2024-03-15', 300.00),
(40009665, 7004, 'Tarjeta', 'Pendiente', 7, '2024-03-16', 410.20),
(40011456, 7015, 'Transferencia', 'Pendiente', 8, '2024-03-17', 330.90),
(40013326, 7017, 'Efectivo', 'Pendiente', 9, '2024-03-18', 720.99),
(40015754, 7009, 'Tarjeta', 'Pendiente', 10, '2024-03-19', 480.60);




INSERT INTO Pedidos_Productos (idPedido, idProducto)
VALUES 
(1, 6576), 
(1, 6579), 
(2, 6577), 
(5, 6580), 
(10, 6585), 
(3, 6587), 
(10, 6586), 
(8, 6583), 
(9, 6577), 
(9, 6584), 
(7, 6582), 
(3, 6578), 
(4, 6579), 
(6, 6588), 
(10, 6590);
>>>>>>> 4d10bc1359688f9e344b1436b7ec4fdba235abf2
