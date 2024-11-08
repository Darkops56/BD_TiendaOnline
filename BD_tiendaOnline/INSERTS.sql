INSERT INTO Pais (idPais, nombre)
VALUES 
(50, 'Chile'), (52, 'Uruguay'), (51, 'Brasil'), (53, 'Bolivia'), (54, 'Paraguay'), 
(55, 'Colombia'), (56, 'Venezuela'), (57, 'Panamá'), (58, 'Costa Rica'), (59, 'Cuba'),
(60, 'Honduras'), (61, 'El Salvador'), (62, 'Guatemala'), (63, 'Nicaragua'), (64, 'Puerto Rico'),
(65, 'República Dominicana'), (66, 'Haití'), (67, 'Jamaica'), (68, 'Guyana'), (69, 'Surinam'),
(70,'Perú'), (71,'México'), (72, 'Ecuador'), (73, 'Argentina');


INSERT INTO Garantia (idGarantia, nombre, caducidad)
VALUES 
(1162348664, 'Sony Warranty', '2026-01-01'), (1162348665, 'Samsung Protect', '2026-05-20'), 
(1162348666, 'Apple Care+', '2027-09-30'), (1162348667, 'LG Extended', '2026-04-15'), 
(1162348668, 'HP Warranty', '2025-12-31'), (1162348669, 'Dell Secure', '2026-03-14'), 
(1162348670, 'Lenovo Care', '2026-06-25'), (1162348671, 'Acer Protect', '2027-01-11'), 
(1162348672, 'Asus Extend', '2027-04-28'), (1162348673, 'MSI Secure', '2027-08-10'), 
(1162348674, 'Canon Care', '2026-02-22'), (1162348675, 'Nikon Protect', '2027-05-19'), 
(1162348676, 'Bose Sound', '2026-07-14'), (1162348677, 'JBL Guard', '2027-06-10'), 
(1162348678, 'Philips Secure', '2026-09-01'), (1162348679, 'Panasonic Safe', '2027-03-09'), 
(1162348680, 'Motorola Care', '2026-11-11'), (1162348681, 'Xiaomi Protect', '2027-10-12'), 
(1162348682, 'Oppo Extend', '2028-01-19'), (1162348683, 'Huawei Warranty', '2027-12-04'),
(1162348663, 'Express', '2027-07-21'), (1284751238, 'Express', '2026-06-30'),
(1284751237,'cannon', '2028-06-14');

INSERT INTO Empleador (cuil, nombre, apellido)
VALUES 
(123456789, 'Tomás', 'Rossi'), (123456790, 'Renata', 'Vidal'), (123456791, 'Alberto', 'Villalba'), 
(123456792, 'Natalia', 'Cáceres'), (123456793, 'Esteban', 'Pereira'), (123456794, 'Carolina', 'Blanco'), 
(123456795, 'Oscar', 'Ríos'), (123456796, 'Luciana', 'Ferrari'), (123456797, 'Ramón', 'Giménez'), 
(123456798, 'Silvia', 'Paz'), (123456799, 'Joaquín', 'Bravo'), (123456800, 'Marta', 'Leiva'), 
(123456801, 'Roberto', 'Mendoza'), (123456802, 'Lorena', 'Ibáñez'), (123456803, 'Daniel', 'Palacios'), 
(123456804, 'Eva', 'Ortiz'), (123456805, 'Claudio', 'Vera'), (123456806, 'Noelia', 'Molina'), 
(123456807, 'Rafael', 'Cabrera'), (123456808, 'Sandra', 'Ponce'), (35678945, 'Timmy', 'Turner'), (34853151, 'Ana', 'Martínez'),
(34853777,'vegetta','777');

INSERT INTO Empleados (matricula, nombre, apellido, cuil)
VALUES 
('G4Y-B01', 'Juan', 'Pérez', 123456789),
('G4Y-B02', 'María', 'López', 123456790),
('G4Y-B03', 'Carlos', 'Sánchez', 123456791),
('G4Y-B04', 'Laura', 'González', 123456792),
('G4Y-B05', 'Pedro', 'Hernández', 123456793),
('G4Y-B06', 'Ana', 'Martínez', 123456794),
('G4Y-B07', 'Jorge', 'Díaz', 123456795),
('G4Y-B08', 'Lucía', 'Vega', 123456796),
('G4Y-B09', 'Raúl', 'Flores', 123456797),
('G4Y-B10', 'Paula', 'Silva', 123456798),
('G4Y-B11', 'Luis', 'Morales', 123456799),
('G4Y-B12', 'Inés', 'Ramírez', 123456800),
('G4Y-B13', 'Manuel', 'Figueroa', 123456801),
('G4Y-B14', 'Beatriz', 'Medina', 123456802),
('G4Y-B15', 'Diego', 'Ortega', 123456803),
('G4Y-B16', 'Elena', 'Soto', 123456804),
('G4Y-B17', 'Santiago', 'Nuñez', 123456805),
('G4Y-B18', 'Valeria', 'Paz', 123456806),
('G4Y-B19', 'Martín', 'Castro', 123456807),
('G4Y-B20', 'Diana', 'Cordero', 123456808),
('G4Y-A57', 'Lucía', 'Martínez', 35678945),
('G4Y-A55', 'Lucas', 'Lisandro', 34853151),
('G4Y-V77', 'Fabrizio', 'Cuello', 34853777);


INSERT INTO Valoracion (idValoracion, valoracion)
VALUES 
('VAL-2025', 4.1), ('VAL-2026', 3.8), ('VAL-2027', 4.3), ('VAL-2028', 2.9), ('VAL-2029', 5.0),
('VAL-2030', 4.7), ('VAL-2031', 3.5), ('VAL-2032', 4.8), ('VAL-2033', 3.0), ('VAL-2034', 4.9),
('VAL-2035', 3.3), ('VAL-2036', 4.2), ('VAL-2037', 4.6), ('VAL-2038', 3.1), ('VAL-2039', 4.5),
('VAL-2040', 2.8), ('VAL-2041', 3.9), ('VAL-2042', 4.0), ('VAL-2043', 5.0), ('VAL-2044', 4.4),
('VAL-2024', 3.9), ('VAL-2023', 4.5), ('VAL-2022', 5.0);

INSERT INTO Categorias (idCategoria, nombre)
VALUES 
(9013, 'Laptops'), (9014, 'Monitores'), (9015, 'Cámaras'), (9016, 'Auriculares'), (9017, 'Teclados'),
(9018, 'Impresoras'), (9019, 'Televisores'), (9020, 'Electrodomésticos'), (9021, 'Cocina'), (9022, 'Muebles'),
(9023, 'Automóviles'), (9024, 'Ropa'), (9025, 'Juguetes'), (9026, 'Libros'), (9027, 'Videojuegos'),
(9028, 'Electrónica'), (9029, 'Perfumes'), (9030, 'Calzado'), (9031, 'Decoración'), (9032, 'Cuidado Personal'),
(34, 'Electrónica Adicional'), (35, 'Electrodomésticos Adicionales'), (36, 'Mobiliarios');

INSERT INTO Usuario (idUsuario, apodo, email, ubicacion, idPais)
VALUES 
(7001, 'DanteX', 'dantex@gmail.com', 'Buenos Aires', 54), (7002, 'Laure', 'laure@hotmail.com', 'Lima', 51), 
(7003, 'Rocket', 'rocket@live.com', 'Bogotá', 60), (7004, 'SilverFox', 'silver.fox@yahoo.com', 'Caracas', 61),
(7005, 'Flame', 'flame@gmail.com', 'Montevideo', 56), (7006, 'Sakura', 'sakura@outlook.com', 'San Juan', 63), 
(7007, 'Panda', 'panda@hotmail.com', 'Santiago', 55), (7008, 'Hera', 'hera@gmail.com', 'Quito', 53),
(7009, 'Fireball', 'fireball@gmail.com', 'La Paz', 58), (7010, 'Skye', 'skye@hotmail.com', 'Panamá City', 62), 
(7011, 'Thor', 'thor@gmail.com', 'San Salvador', 66), (7012, 'Venom', 'venom@live.com', 'Asunción', 59), 
(7013, 'Bubbly', 'bubbly@outlook.com', 'San José', 63), (7014, 'Nova', 'nova@gmail.com', 'Ciudad de México', 52), 
(7015, 'Phoenix', 'phoenix@yahoo.com', 'San Juan', 64), (7016, 'Jet', 'jet@hotmail.com', 'Guatemala', 67), 
(7017, 'Atlas', 'atlas@gmail.com', 'Tegucigalpa', 65), (7018, 'Ares', 'ares@yahoo.com', 'La Habana', 64), 
(7019, 'Echo', 'echo@gmail.com', 'Managua', 68), (7020, 'Tempest', 'tempest@live.com', 'Puerto Príncipe', 71),
(5456 ,'Xx_NoobMaster69_xX' , 'tugatitauwu69@hotmail.com', 'Perú' ,51), (8371 ,'tuleoncita' , 'leonaempoderada.mor86@hotmail.com', 'Islas del Kongo' ,54),
(2008,'gatogayowo777','tulobita777@gmail.com','Argentina',54);

INSERT INTO Productos (idProducto, nombre, precio, stock, descripcion, cuil, idGarantia, idCategoria)
VALUES 
(6576, 'Laptop MX100', 320, 25, 'Laptop de 14 pulgadas con 8GB RAM', 123456789, 1162348664, 9013),
(6577, 'Monitor HD', 120, 50, 'Monitor de 24 pulgadas Full HD', 123456790, 1162348665, 9014),
(6578, 'Cámara Pro', 450, 15, 'Cámara de alta resolución con 4K', 123456791, 1162348666, 9015),
(6579, 'Auriculares WZ', 80, 100, 'Auriculares inalámbricos con sonido envolvente', 123456792, 1162348667, 9016),
(6580, 'Teclado RGB', 60, 70, 'Teclado mecánico con iluminación RGB', 123456793, 1162348668, 9017),
(6581, 'Impresora Láser', 200, 20, 'Impresora láser monocromática', 123456794, 1162348669, 9018),
(6582, 'Smart TV 50"', 400, 10, 'Televisor 4K de 50 pulgadas', 123456795, 1162348670, 9019),
(6583, 'Aspiradora Smart', 150, 30, 'Aspiradora inteligente con Wi-Fi', 123456796, 1162348671, 9020),
(6584, 'Freidora de Aire', 110, 60, 'Freidora sin aceite de 5 litros', 123456797, 1162348672, 9021),
(6585, 'Sofá Modular', 300, 5, 'Sofá modular con tres piezas', 123456798, 1162348673, 9022),
(6586, 'Auto Modelo X', 18000, 3, 'Auto compacto de 4 puertas', 123456799, 1162348674, 9023),
(6587, 'Chaqueta Invierno', 50, 40, 'Chaqueta para invierno con aislamiento', 123456800, 1162348675, 9024),
(6588, 'Dron Z-Pro', 250, 10, 'Dron con cámara 1080p y estabilizador', 123456801, 1162348676, 9027),
(6589, 'Smartphone Galaxy', 300, 35, 'Smartphone con 64GB de memoria y 6.4" de pantalla', 123456802, 1162348664, 9028),
(6590, 'Perfume Classic', 40, 100, 'Perfume de aroma clásico', 123456803, 1162348678, 9029),
(4534, 'Smartphone XYZ', 299.99, 50, 'Smartphone de última generación con pantalla de 6.5 pulgadas.', 35678945, 1162348663, 34),
(4012, 'Aire Acondicionado Split Inverter Midea Smart', 2999.99, 34, 'Un aire con la capacidad de mantener fresco cualquier ambiente.', 34853151, 1284751238, 35),
(2077, 'Cama', 3.99, 669, 'Dormirás muy bien en esta cama probablemente mucho más cara que la tuya, mucho más cómoda que la tuya y mucho más bonita que la tuya', 34853777, 1284751237, 36);


INSERT INTO Comentario (idComentario, idUsuario, idValoracion, comentario) 
VALUES 
(7, 5456, 'VAL-2024', 'Compre esta Play 2 chipiada en esta tienda y me vino con el Dragon Ball Budokai Tenkaichi 4. Buen servicio 😎'),
(8, 8371, 'VAL-2023', 'Cuando lo encendí empezó a hacer ruidos raros. Lo abrí y había una familia de zarigüeyas viviendo ahí (a la grande le puse Cuca).'),
(3001, 7001, 'VAL-2022', 'Excelente producto, llegó en tiempo y forma.'),
(3002, 7002, 'VAL-2025', 'La calidad es buena, pero tardó en llegar.'),
(3003, 7003, 'VAL-2027', 'No me gustó mucho, no es lo que esperaba.'),
(3004, 7004, 'VAL-2029', 'Muy satisfecho con la compra.'),
(3005, 7005, 'VAL-2026', 'Es un buen producto por el precio que pagué.'),
(3006, 7006, 'VAL-2034', 'Poco satisfecho, vino con un defecto.'),
(3007, 7007, 'VAL-2027', '¡Me encanta! Recomendado 100%.'),
(3008, 7008, 'VAL-2026', 'Cumple con lo prometido, muy bien.'),
(3009, 7009, 'VAL-2028', 'Esperaba más, regular en calidad.'),
(3010, 7010, 'VAL-2040', 'No recomiendo, pésima experiencia.'),
(3011, 7011, 'VAL-2027', 'Muy práctico y fácil de usar.'),
(3012, 7012, 'VAL-2041', 'Me funcionó bastante bien.'),
(3013, 7013, 'VAL-2033', 'Le falta calidad, pero cumple.'),
(3014, 7014, 'VAL-2032', 'Buen precio, buen producto.'),
(3015, 7015, 'VAL-2039', 'Perfecto, justo lo que buscaba.'),
(3016, 7016, 'VAL-2031', 'Llegó rápido, buen empaque.'),
(3017, 7017, 'VAL-2042', 'Calidad regular, esperaba más.'),
(3018, 7018, 'VAL-2037', 'Muy contento con mi compra.'),
(3019, 7019, 'VAL-2040', 'No lo recomiendo, mal servicio.'),
(3020, 2008, 'VAL-2036', 'Esta cama es como la que le hicieron al Coco Basile, dura y fría.');


INSERT INTO Ubicacion (idUbicacion, direccion, ciudad, idPais)
VALUES 
(201, 'Avenida Siempre Viva 742', 'Springfield', 54), 
(202, 'Calle Falsa 123', 'Bogotá', 60), 
(203, 'Ruta 66', 'Lima', 51), 
(204, 'Diagonal 45', 'Caracas', 61), 
(205, 'Avenida del Sol', 'Santiago', 55), 
(206, 'Calle 50', 'Panamá', 62), 
(207, 'Avenida Libertador', 'Quito', 53), 
(208, 'Calle Los Olivos', 'San Juan', 64), 
(209, 'Calle Corrientes', 'Buenos Aires', 54), 
(210, 'Avenida Independencia', 'San Salvador', 66), 
(211, 'Calle Palma', 'Asunción', 59), 
(212, 'Avenida Insurgentes', 'Ciudad de México', 52), 
(213, 'Calle San Martín', 'Montevideo', 56), 
(214, 'Avenida de la Marina', 'Lima', 51), 
(215, 'Calle Real', 'San José', 63), 
(216, 'Avenida Brasil', 'La Paz', 58), 
(217, 'Calle 21', 'La Habana', 64), 
(218, 'Avenida Duarte', 'Santo Domingo', 70), 
(219, 'Boulevard Centro', 'Tegucigalpa', 65), 
(220, 'Avenida de las Américas', 'San Juan', 63);

INSERT INTO Contrato (idContrato, matricula, fechaInicio, fechaFin, salario, cuil)
VALUES 
(201, 'G4Y-B01', '2023-01-01', '2024-01-01', 50000, 123456789), 
(202, 'G4Y-B02', '2023-02-01', '2024-02-01', 48000, 123456790), 
(203, 'G4Y-B03', '2023-03-01', '2024-03-01', 52000, 123456791), 
(204, 'G4Y-B04', '2023-04-01', '2024-04-01', 49000, 123456792), 
(205, 'G4Y-B05', '2023-05-01', '2024-05-01', 51000, 123456793), 
(206, 'G4Y-B06', '2023-06-01', '2024-06-01', 47000, 123456794), 
(207, 'G4Y-B07', '2023-07-01', '2024-07-01', 53000, 123456795), 
(208, 'G4Y-B08', '2023-08-01', '2024-08-01', 55000, 123456796), 
(209, 'G4Y-B09', '2023-09-01', '2024-09-01', 46000, 123456797), 
(210, 'G4Y-B10', '2023-10-01', '2024-10-01', 48000, 123456798), 
(211, 'G4Y-B11', '2023-11-01', '2024-11-01', 54000, 123456799), 
(212, 'G4Y-B12', '2023-12-01', '2024-12-01', 53000, 123456800), 
(213, 'G4Y-B13', '2024-01-01', '2025-01-01', 51000, 123456801), 
(214, 'G4Y-B14', '2024-02-01', '2025-02-01', 50000, 123456802), 
(215, 'G4Y-B15', '2024-03-01', '2025-03-01', 49000, 123456803), 
(216, 'G4Y-B16', '2024-04-01', '2025-04-01', 56000, 123456804), 
(217, 'G4Y-B17', '2024-05-01', '2025-05-01', 45000, 123456805), 
(218, 'G4Y-B18', '2024-06-01', '2025-06-01', 60000, 123456806), 
(219, 'G4Y-B19', '2024-07-01', '2025-07-01', 52000, 123456807), 
(220, 'G4Y-B20', '2024-08-01', '2025-08-01', 58000, 123456808);

INSERT INTO Envios (matricula, fechaEnvio, idProducto) VALUES
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


INSERT INTO Inventario (idInventario, idProducto, cantidad, fechaIngreso)
VALUES 
(30001, 6576, 100, '2023-01-15'), 
(30002, 6577, 80, '2023-02-10'), 
(30003, 6578, 120, '2023-03-05'), 
(30004, 6579, 150, '2023-04-12'), 
(30005, 6580, 200, '2023-05-09'), 
(30006, 6581, 50, '2023-06-01'), 
(30007, 6582, 60, '2023-07-14'), 
(30008, 6583, 70, '2023-08-20'), 
(30009, 6584, 90, '2023-09-25'), 
(30010, 6585, 100, '2023-10-03'), 
(30011, 6586, 75, '2023-11-18'), 
(30012, 6587, 65, '2023-12-24'), 
(30013, 6588, 130, '2024-01-30'), 
(30014, 6589, 140, '2024-02-27'), 
(30015, 6590, 110, '2024-03-13'), 
(30016, 4534, 85, '2024-04-16'), 
(30017, 4012, 105, '2024-05-19'), 
(30018, 2077, 125, '2024-06-22');


INSERT INTO Pedidos (idPedido, idProducto, dni, fechaPedido, direccion) VALUES
(1, 6576, 12345678, '2024-03-10 15:30:00', 'Calle 123, Ciudad A'),
(2, 6577, 87654321, '2024-03-11 16:00:00', 'Avenida 456, Ciudad B'),
(3, 6578, 95912334, '2024-03-12 14:15:00', 'Boulevard 789, Ciudad C'),
(4, 6579, 10123456, '2024-03-13 17:30:00', 'Calle 101, Ciudad D'),
(5, 6580, 10123457, '2024-03-14 13:45:00', 'Avenida 202, Ciudad E'),
(6, 6581, 10123458, '2024-03-15 10:00:00', 'Pasaje 303, Ciudad F'),
(7, 6582, 10123459, '2024-03-16 11:20:00', 'Camino 404, Ciudad G'),
(8, 6583, 10123460, '2024-03-17 15:50:00', 'Callejón 505, Ciudad H'),
(9, 6584, 10123461, '2024-03-18 16:35:00', 'Paseo 606, Ciudad I'),
(10, 6585, 10123462, '2024-03-19 12:00:00', 'Ruta 707, Ciudad J');



INSERT INTO HistorialCompra (idProducto, idCategoria, idPedido, idUbicacion, precioUnitario, fecha) VALUES
(6576, 9013, 1, 201, 320, '2024-03-10'),
(6577, 9014, 2, 202, 120, '2024-03-11'), 
(6578, 9015, 3, 203, 450, '2024-03-12'), 
(6579, 9016, 4, 204, 80, '2024-03-13'),  
(6580, 9017, 5, 205, 60, '2024-03-14'),  
(6581, 9018, 6, 206, 200, '2024-03-15'), 
(6582, 9019, 7, 207, 400, '2024-03-16'), 
(6583, 9020, 8, 208, 150, '2024-03-17'),
(6584, 9021, 9, 209, 110, '2024-03-18'), 
(6585, 9022, 10, 210, 300, '2024-03-19'); 


 
INSERT INTO Comprobante (numeroDeReferencia, idPedido, dni, fecha, montoTotal)
VALUES 
(20241234, 1, 12345678, '2012-05-10', 519.40),  
(20256232, 2, 87654321, '2010-04-17', 1823.20), 
(20256399, 3, 95912334, '2015-12-21', 4123.90), 
(40001123, 4, 10123456, '2023-01-01', 600.50),  
(40005123, 5, 10123457, '2023-05-05', 590.00),  
(40007556, 6, 10123458, '2023-07-08', 300.00),  
(40009665, 7, 10123459, '2023-09-14', 410.20),  
(40011456, 8, 10123460, '2023-11-20', 330.90),  
(40013326, 9, 10123461, '2024-01-15', 720.99),  
(40015754, 10, 10123462, '2024-03-25', 480.60); 

INSERT INTO Carrito (idCarrito, precioTotal, idProducto, idPedido) VALUES
(1, 320, 6576, 1), 
(2, 120, 6577, 2), 
(3, 450, 6578, 3), 
(4, 80, 6579, 4),  
(5, 60, 6580, 5),  
(6, 200, 6581, 6), 
(7, 400, 6582, 7), 
(8, 150, 6583, 8), 
(9, 110, 6584, 9), 
(10, 300, 6585, 10); 

INSERT INTO Clientes (dni, nombre, apellido, idUsuario)
VALUES 
(12345678, 'Carlos', 'López', 5456),
(87654321, 'Maria', 'Gonzalez', 8371),
(95912334, 'Brisa', 'Marcos', 2008),
(10123456, 'Dante', 'X', 7001),
(10123457, 'Laura', 'Rey', 7002),
(10123458, 'Raúl', 'Gómez', 7003),
(10123459, 'Ana', 'Pérez', 7004),
(10123460, 'Sofía', 'Ramos', 7005),
(10123461, 'Carmen', 'Sosa', 7006),
(10123462, 'Jorge', 'Vera', 7007),
(10123463, 'Luis', 'Campos', 7008),
(10123464, 'Santiago', 'Martínez', 7009),
(10123465, 'Elena', 'Morales', 7010),
(10123466, 'Clara', 'Vargas', 7011),
(10123467, 'Gabriel', 'López', 7012),
(10123468, 'Sandra', 'Jiménez', 7013),
(10123469, 'Daniel', 'Torres', 7014),
(10123470, 'Martín', 'Salas', 7015),
(10123471, 'Alberto', 'Álvarez', 7016),
(10123472, 'Patricia', 'Fuentes', 7017),
(10123473, 'Miguel', 'Luna', 7018),
(10123474, 'Rosa', 'Castro', 7019),
(10123475, 'Lucía', 'Guerrero', 7020);


INSERT INTO Pedidos_Productos (idPedidosProductos, idPedido, idProducto, cantidad)
VALUES 
(1, 1, 6576, 2), 
(2, 1, 6579, 1), 
(3, 2, 6577, 1), 
(4, 5, 6580, 1), 
(5, 10, 6585, 1), 
(6, 3, 6587, 2), 
(7, 10, 6586, 1), 
(8, 8, 6583, 1), 
(9, 2, 6577, 4), 
(10, 9, 6584, 2), 
(11, 7, 6582, 1), 
(12, 3, 6578, 1), 
(13, 4, 6579, 1), 
(14, 6, 6588, 1), 
(15, 10, 6590, 3);
