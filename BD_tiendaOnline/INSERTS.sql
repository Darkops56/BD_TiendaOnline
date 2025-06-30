INSERT INTO Pais (idPais, nombre)
VALUES 
(50, 'Chile'), (52, 'Uruguay'), (51, 'Brasil'), (53, 'Bolivia'), (54, 'Paraguay'), 
(55, 'Colombia'), (56, 'Venezuela'), (57, 'Panamá'), (58, 'Costa Rica'), (59, 'Cuba'),
(60, 'Honduras'), (61, 'El Salvador'), (62, 'Guatemala'), (63, 'Nicaragua'), (64, 'Puerto Rico'),
(65, 'República Dominicana'), (66, 'Haití'), (67, 'Jamaica'), (68, 'Guyana'), (69, 'Surinam'),
(70, 'Perú'), (71, 'México'), (72, 'Ecuador'), (73, 'Argentina');

INSERT INTO Clientes (dni, nombre, apellido)
VALUES 
(12345678, 'Carlos', 'López'),
(87654321, 'Maria', 'Gonzalez'),
(95912334, 'Brisa', 'Marcos'),
(10123456, 'Dante', 'Herrera'),
(10123457, 'Laura', 'Rey'),
(10123458, 'Raúl', 'Gómez'),
(10123459, 'Ana', 'Pérez'),
(10123460, 'Sofía', 'Ramos'),
(10123461, 'Carmen', 'Sosa'),
(10123462, 'Jorge', 'Vera'),
(10123463, 'Luis', 'Campos'),
(10123464, 'Santiago', 'Martínez'),
(10123465, 'Elena', 'Morales'),
(10123466, 'Clara', 'Vargas'),
(10123467, 'Gabriel', 'López'),
(10123468, 'Sandra', 'Jiménez'),
(10123469, 'Daniel', 'Torres'),
(10123470, 'Martín', 'Salas'),
(10123471, 'Alberto', 'Álvarez'),
(10123472, 'Patricia', 'Fuentes'),
(10123473, 'Miguel', 'Luna'),
(10123474, 'Rosa', 'Castro'),
(10123475, 'Lucía', 'Guerrero'),
(10324511, 'Lucho', 'Miranda');

INSERT INTO Garantia (idGarantia, nombre, caducidad, tipoGarantia, condiciones)
VALUES 
(1162348664, 'Sony Warranty', '2026-01-01', 'Extendida', 'Cubre daños accidentales por 3 años. No incluye caída o mal uso.'),
(1162348665, 'Samsung Protect', '2026-05-20', 'Protección', 'Garantía de 2 años para daños por agua y caídas.'),
(1162348666, 'Apple Care+', '2027-09-30', 'Seguridad', 'Cubre daños accidentales, incluyendo pantalla rota. Incluye soporte técnico prioritario.'),
(1162348667, 'LG Extended', '2026-04-15', 'Extendida', 'Extiende la garantía de fábrica por 2 años adicionales. Solo cubre defectos de fabricación.'),
(1162348668, 'HP Warranty', '2025-12-31', 'Garantía estándar', 'Cobertura de 1 año para defectos de fabricación. No cubre daños accidentales.'),
(1162348669, 'Dell Secure', '2026-03-14', 'Seguridad', 'Incluye reparación gratuita en caso de mal funcionamiento del sistema. No cubre daños por virus.'),
(1162348670, 'Lenovo Care', '2026-06-25', 'Protección', 'Garantía de 3 años contra fallos de hardware. No cubre daños por mal uso.'),
(1162348671, 'Acer Protect', '2027-01-11', 'Protección', 'Cubre daños por sobrecalentamiento y fallos de hardware por 2 años.'),
(1162348672, 'Asus Extend', '2027-04-28', 'Extendida', 'Extiende la cobertura de 1 año a 3 años. Cubre fallos del sistema.'),
(1162348673, 'MSI Secure', '2027-08-10', 'Seguridad', 'Garantía contra mal funcionamiento del hardware durante 2 años.'),
(1162348674, 'Canon Care', '2026-02-22', 'Garantía estándar', 'Cobertura limitada de 1 año. Cubre solo defectos de fábrica.'),
(1162348675, 'Nikon Protect', '2027-05-19', 'Protección', 'Garantía de 2 años para cámaras y lentes. Cubre daños por caídas y humedad.'),
(1162348676, 'Bose Sound', '2026-07-14', 'Extendida', 'Extiende la garantía por 2 años. Cubre fallos en la calidad de sonido y batería.'),
(1162348677, 'JBL Guard', '2027-06-10', 'Seguridad', 'Cubre daños por caídas accidentales, incluida la reparación del altavoz.'),
(1162348678, 'Philips Secure', '2026-09-01', 'Seguridad', 'Garantía de 2 años. Cubre defectos de fábrica y mal funcionamiento del producto.'),
(1162348679, 'Panasonic Safe', '2027-03-09', 'Protección', 'Cubre daños de fábrica durante 2 años. No cubre daños por uso indebido.'),
(1162348680, 'Motorola Care', '2026-11-11', 'Garantía estándar', 'Cobertura de 1 año. Incluye reparaciones por defectos de fabricación.'),
(1162348681, 'Xiaomi Protect', '2027-10-12', 'Protección', 'Cubre daños por caídas y mal uso del dispositivo por 2 años.'),
(1162348682, 'Oppo Extend', '2028-01-19', 'Extendida', 'Garantía extendida por 2 años. Cubre solo defectos de fábrica.'),
(1162348683, 'Huawei Warranty', '2027-12-04', 'Garantía estándar', 'Cobertura básica de 1 año. No cubre daños accidentales.'),
(1162348663, 'Express', '2027-07-21', 'Protección', 'Garantía por 2 años que cubre daños por mal uso y caídas accidentales.'),
(1284751238, 'Express', '2026-06-30', 'Protección', 'Protección ante fallos de hardware por 2 años. No cubre daños por agua.'),
(1284751237, 'Canon', '2028-06-14', 'Extendida', 'Extiende la garantía estándar por 3 años. Cubre problemas de fabricación y componentes defectuosos.');
INSERT INTO Empleados (matricula, nombre, apellido, fechaIngreso, salario, puesto, contrato)
VALUES 
('G4Y-B01', 'Juan', 'Pérez', '2023-01-15', 3000, 'Desarrollador de Software', '2023-01-15'),
('G4Y-B02', 'María', 'López', '2023-02-20', 1500, 'Asistente Administrativo', '2023-02-20'),
('G4Y-B03', 'Carlos', 'Sánchez', '2022-06-30', 4500, 'Gerente de Marketing', '2022-06-30'),
('G4Y-B04', 'Laura', 'González', '2024-03-01', 2800, 'Diseñadora Gráfica', '2024-03-01'),
('G4Y-B05', 'Pedro', 'Hernández', '2023-07-10', 3500, 'Jefe de Ventas', '2023-07-10'),
('G4Y-B06', 'Ana', 'Martínez', '2023-11-05', 2200, 'Recepcionista', '2023-11-05'),
('G4Y-B07', 'Jorge', 'Díaz', '2023-09-12', 1800, 'Soporte Técnico', '2023-09-12'),
('G4Y-B08', 'Lucía', 'Vega', '2023-10-25', 2700, 'Analista de Datos', '2023-10-25'),
('G4Y-B09', 'Raúl', 'Flores', '2023-12-01', 3200, 'Contador', '2023-12-01'),
('G4Y-B10', 'Paula', 'Silva', '2024-01-05', 3900, 'Gerente de Finanzas', '2024-01-05'),
('G4Y-B11', 'Luis', 'Morales', '2023-04-15', 3300, 'Analista de Marketing', '2023-04-15'),
('G4Y-B12', 'Inés', 'Ramírez', '2022-08-12', 2500, 'Asistente de Recursos Humanos', '2022-08-12'),
('G4Y-B13', 'Manuel', 'Figueroa', '2023-06-05', 4000, 'Director de Proyectos', '2023-06-05'),
('G4Y-B14', 'Beatriz', 'Medina', '2023-07-20', 2800, 'Coordinadora de Eventos', '2023-07-20'),
('G4Y-B15', 'Diego', 'Ortega', '2023-09-25', 2200, 'Analista de Sistemas', '2023-09-25'),
('G4Y-B16', 'Elena', 'Soto', '2023-10-05', 3100, 'Asesora Comercial', '2023-10-05'),
('G4Y-B17', 'Santiago', 'Nuñez', '2023-08-30', 2000, 'Vendedor', '2023-08-30'),
('G4Y-B18', 'Valeria', 'Paz', '2023-05-15', 2500, 'Diseñadora de Moda', '2023-05-15'),
('G4Y-B19', 'Martín', 'Castro', '2023-04-22', 1800, 'Asistente de Ventas', '2023-04-22'),
('G4Y-B20', 'Diana', 'Cordero', '2023-02-05', 3100, 'Coordinadora de Proyectos', '2023-02-05'),
('G4Y-A57', 'Lucía', 'Martínez', '2024-01-10', 3300, 'Asistente Ejecutivo', '2024-01-10'),
('G4Y-A55', 'Lucas', 'Lisandro', '2024-02-18', 3600, 'Líder de Equipo', '2024-02-18'),
('G4Y-V77', 'Fabrizio', 'Cuello', '2023-11-22', 4000, 'Director de Tecnología', '2023-11-22');

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


INSERT INTO Usuario (idUsuario, apodo, email, ubicacion, idPais, dni)
VALUES 
(7001, 'DanteX', 'dantex@gmail.com', 'Buenos Aires', 54, 10123456),
(7002, 'Laure', 'laure@hotmail.com', 'Lima', 51, 10123457),
(7003, 'Rocket', 'rocket@live.com', 'Bogotá', 55, 95912334),
(7004, 'SilverFox', 'silver.fox@yahoo.com', 'Caracas', 56, 87654321),
(7005, 'Flame', 'flame@gmail.com', 'Montevideo', 52, 12345678),
(7006, 'Sakura', 'sakura@outlook.com', 'San Juan', 63, 10123458),
(7007, 'Panda', 'panda@hotmail.com', 'Santiago', 50, 10123459),
(7008, 'Hera', 'hera@gmail.com', 'Quito', 72, 10123460),
(7009, 'Fireball', 'fireball@gmail.com', 'La Paz', 53, 10123461),
(7010, 'Skye', 'skye@hotmail.com', 'Panamá City', 57, 10123462),
(7011, 'Thor', 'thor@gmail.com', 'San Salvador', 60, 10123463),
(7012, 'Venom', 'venom@live.com', 'Asunción', 54, 10123464),
(7013, 'Bubbly', 'bubbly@outlook.com', 'San José', 58, 10123465),
(7014, 'Nova', 'nova@gmail.com', 'Ciudad de México', 71, 10123466),
(7015, 'Phoenix', 'phoenix@yahoo.com', 'San Juan', 63, 10123467),
(7016, 'Jet', 'jet@hotmail.com', 'Guatemala', 62, 10123468),
(7017, 'Atlas', 'atlas@gmail.com', 'Tegucigalpa', 60, 10123469),
(7018, 'Ares', 'ares@yahoo.com', 'La Habana', 59, 10123470),
(7019, 'Echo', 'echo@gmail.com', 'Managua', 62, 10123471),
(7020, 'Tempest', 'tempest@live.com', 'Puerto Príncipe', 66, 10123472),
(5456, 'Xx_NoobMaster69_xX', 'tugatitauwu69@hotmail.com', 'Perú', 51, 10123472),
(8371, 'tuleoncita', 'leonaempoderada.mor86@hotmail.com', 'Islas del Kongo', 54, 10123464),
(2008, 'gatogayowo777', 'tulobita777@gmail.com', 'Argentina', 54, 12345678),
(3912, 'tugatito', 'gatitoempoderado.txt16@hotmail.com', 'Lima', 54, 10123462),
(4213, 'fancy', 'fancy84@gmail.com', 'Buenos Aires', 73, 10324511);

INSERT INTO Inventario (idInventario, cantidad, fechaIngreso)
VALUES 
(10001, 100, '2023-01-15'), 
(10002, 80, '2023-02-10'), 
(10003, 120, '2023-03-05'), 
(10004, 150, '2023-04-12'), 
(10005, 200, '2023-05-09'), 
(10006, 50, '2023-06-01'), 
(10007, 60, '2023-07-14'), 
(10008, 70, '2023-08-20'),
(10009, 90, '2023-09-25'), 
(10010, 100, '2023-10-03'), 
(10011, 75, '2023-11-18'), 
(10012, 65, '2023-12-24'), 
(10013, 130, '2024-01-30'), 
(10014, 140, '2024-02-27'), 
(10015, 110, '2024-03-13'), 
(10016, 85, '2024-04-16'), 
(10017, 105, '2024-05-19'), 
(10018, 125, '2024-06-22');

INSERT INTO Productos (idProducto, nombre, precio, stock, descripcion, idGarantia, idCategoria, idInventario)
VALUES 
(6576, 'Laptop MX100', 320, 100, 'Laptop de 14 pulgadas con 8GB RAM', 1162348664, 9013, 10001),
(6577, 'Monitor HD', 120, 80, 'Monitor de 24 pulgadas Full HD', 1162348665, 9014, 10002),
(6578, 'Cámara Pro', 450, 120, 'Cámara de alta resolución con 4K', 1162348666, 9015, 10003),
(6579, 'Auriculares WZ', 80, 150, 'Auriculares inalámbricos con sonido envolvente', 1162348667, 9016, 10014),
(6580, 'Teclado RGB', 60, 200, 'Teclado mecánico con iluminación RGB', 1162348668, 9017, 10004),
(6581, 'Impresora Láser', 200, 50, 'Impresora láser monocromática', 1162348669, 9018, 10003),
(6582, 'Smart TV 50"', 400, 60, 'Televisor 4K de 50 pulgadas', 1162348670, 9019, 10001),
(6583, 'Aspiradora Smart', 150, 70, 'Aspiradora inteligente con Wi-Fi', 1162348671, 9020, 10018),
(6584, 'Freidora de Aire', 110, 90, 'Freidora sin aceite de 5 litros', 1162348672, 9021, 10002),
(6585, 'Sofá Modular', 300, 100, 'Sofá modular con tres piezas', 1162348673, 9022, 10003),
(6586, 'Auto Modelo X', 18000, 75, 'Auto compacto de 4 puertas', 1162348674, 9023, 10012),
(6587, 'Chaqueta Invierno', 50, 65, 'Chaqueta para invierno con aislamiento', 1162348675, 9024, 10009),
(6588, 'Dron Z-Pro', 250, 130, 'Dron con cámara 1080p y estabilizador', 1162348676, 9027, 10013),
(6589, 'Smartphone Galaxy', 300, 140, 'Smartphone con 64GB de memoria y 6.4" de pantalla', 1162348664, 9028, 10004),
(6590, 'Perfume Classic', 40, 100, 'Perfume de aroma clásico', 1162348678, 9029, 10015),
(4534, 'Smartphone XYZ', 299.99, 85, 'Smartphone de última generación con pantalla de 6.5 pulgadas.', 1162348663, 34, 10002),
(4012, 'Aire Acondicionado Split Inverter Midea Smart', 2999.99, 105, 'Un aire con la capacidad de mantener fresco cualquier ambiente.', 1284751238, 35, 10017),
(2077, 'Cama', 3.99, 125, 'Dormirás muy bien en esta cama probablemente mucho más cara que la tuya, mucho más cómoda que la tuya y mucho más bonita que la tuya', 1284751237, 36, 10017);

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


INSERT INTO Ubicacion (idUbicacion, direccion, ciudad, provincia, codigoPostal, idPais)
VALUES 
(201, 'Avenida Siempre Viva 742', 'Springfield', 54, '12345', 54), 
(202, 'Calle Falsa 123', 'Bogotá', 60, '67890', 60), 
(203, 'Ruta 66', 'Lima', 51, '11223', 51), 
(204, 'Diagonal 45', 'Caracas', 61, '44556', 61), 
(205, 'Avenida del Sol', 'Santiago', 55, '78901', 55), 
(206, 'Calle 50', 'Panamá', 62, '23456', 62), 
(207, 'Avenida Libertador', 'Quito', 53, '34567', 53),
(208, 'Calle Los Olivos', 'San Juan', 64, '45678', 64), 
(209, 'Calle Corrientes', 'Buenos Aires', 54, '56789', 73), 
(210, 'Avenida Independencia', 'San Salvador', 66, '67890', 66), 
(211, 'Calle Palma', 'Asunción', 59, '78901', 59), 
(212, 'Avenida Insurgentes', 'Ciudad de México', 52, '89012', 71), 
(213, 'Calle San Martín', 'Montevideo', 56, '90123', 72), 
(214, 'Avenida de la Marina', 'Lima', 51, '11223', 51), 
(215, 'Calle Real', 'San José', 63, '12334', 58), 
(216, 'Avenida Brasil', 'La Paz', 58, '98765', 57), 
(217, 'Calle 21', 'La Habana', 64, '12345', 59), 
(218, 'Avenida Duarte', 'Santo Domingo', 70, '23456', 65), 
(219, 'Boulevard Centro', 'Tegucigalpa', 65, '34567', 60), 
(220, 'Avenida de las Américas', 'San Juan', 63, '45678', 64);

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

INSERT INTO Pedidos (idPedido, idUsuario, estado, fechaPedido, direccion, formaPago, total) 
VALUES 
(1,  7016, 'Pendiente', '2024-03-10 15:30:00', 'Calle 123, Ciudad A', 'Tarjeta', 1000),
(2, 8371, 'Pendiente', '2024-03-11 16:00:00', 'Avenida 456, Ciudad B', 'Efectivo', 200),
(3, 2008, 'Pendiente', '2024-03-12 14:15:00', 'Boulevard 789, Ciudad C', 'Tarjeta', 670),
(4, 7017, 'Pendiente', '2024-03-13 17:30:00', 'Calle 101, Ciudad D', 'Transferencia', 990.99),
(5, 7015, 'Pendiente', '2024-03-14 13:45:00', 'Avenida 202, Ciudad E', 'Tarjeta', 1040.98),
(6, 7019, 'Pendiente', '2024-03-15 10:00:00', 'Pasaje 303, Ciudad F', 'Efectivo', 320),
(7, 7011, 'Pendiente', '2024-03-16 11:20:00', 'Camino 404, Ciudad G', 'Tarjeta', 599.99),
(8, 7020, 'Pendiente', '2024-03-17 15:50:00', 'Callejón 505, Ciudad H', 'Transferencia', 100),
(9, 7009, 'Pendiente', '2024-03-18 16:35:00', 'Paseo 606, Ciudad I', 'Efectivo', 671.58),
(10, 7005, 'Pendiente', '2024-03-19 12:00:00', 'Ruta 707, Ciudad J', 'Tarjeta', 820.87);




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
