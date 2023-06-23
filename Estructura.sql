--PRÁCTICA SQL
--EJERCICIO 1
CREATE TABLE cliente (
  ID_Cliente int NOT NULL,
  nombre varchar(50) NOT NULL,
  primerApellido varchar(50) NOT NULL,
  segundoApellido varchar(50),
  rfc varchar(50),
  telefono varchar(50) NOT NULL,
  correoElectronico varchar(200),
  direccion_pais varchar(100) NOT NULL,
  direccion_estado varchar(100) NOT NULL,
  direccion_delegacion varchar(100),
  direccion_colonia varchar(100),
  direccion_calle varchar(100),
  direccion_numext varchar(100),
  direccion_numint varchar(100),
  direccion_cp varchar(6),
  credito numeric(10,4),
  deuda numeric(10,4),
  fecha_alta date NOT NULL,
  fecha_nac date NOT NULL
);

-- Estructura de tabla para la tabla `producto`

CREATE TABLE producto (
  ID_Producto int NOT NULL,
  ID_Proveedor int,
  nombre varchar(50) NOT NULL,
  precioCompra numeric(10,4) NOT NULL,
  precioSugeridoVenta numeric(10,4) NOT NULL,
  existencia numeric(10,4) NOT NULL,
  precioMinimo numeric(10,4) NOT NULL
);

-- Estructura de tabla para la tabla `producto_vendido`

CREATE TABLE producto_vendido (
  ID_ProductoVendido int NOT NULL,
  ID_Venta int NOT NULL,
  cantidad decimal(10,4) NOT NULL,
  precioVenta decimal(10,4) NOT NULL,
  ID_Producto int
);


-- Estructura de tabla para la tabla `proveedor`

CREATE TABLE proveedor (
  ID_Proveedor int NOT NULL,
  nombre varchar(50) NOT NULL,
  telefono varchar(15),
  email varchar(20),
  rfc varchar(13)
);

-- Estructura de tabla para la tabla `venta`

CREATE TABLE venta (
  ID_Venta int NOT NULL,
  fecha date NOT NULL,
  ID_cliente int NOT NULL,
  montoTotal decimal(10,4) NOT NULL
);


--AGREGAR CLAVES PRIMARIAS Y FORÁNEAS
-- Indices de la tabla `cliente`
ALTER TABLE cliente ADD PRIMARY KEY (ID_Cliente);

-- Indices de la tabla `producto`
ALTER TABLE producto ADD PRIMARY KEY (ID_Producto);
 -- ADD KEY FK_Producto (ID_Proveedor);

-- Indices de la tabla `producto_vendido`
ALTER TABLE producto_vendido ADD PRIMARY KEY (ID_ProductoVendido);
 -- ADD KEY FK_ProductoVendido1 (ID_Venta),
  --ADD KEY FK_ProductoVendido2 (ID_Producto);

-- Indices de la tabla `proveedor`
ALTER TABLE proveedor ADD PRIMARY KEY (ID_Proveedor);

-- Indices de la tabla `venta`
ALTER TABLE venta ADD PRIMARY KEY (ID_Venta);
  --ADD KEY FK_Venta (ID_cliente);

-- Restricciones para tablas volcadas

-- Filtros para la tabla `producto`
ALTER TABLE producto ADD CONSTRAINT FK_Producto FOREIGN KEY (ID_Proveedor) REFERENCES proveedor (ID_Proveedor);

-- Filtros para la tabla `producto_vendido`
ALTER TABLE producto_vendido ADD CONSTRAINT FK_ProductoVendido1 FOREIGN KEY (ID_Venta) REFERENCES venta (ID_Venta);
ALTER TABLE producto_vendido ADD CONSTRAINT FK_ProductoVendido2 FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto);

-- Filtros para la tabla `venta`
ALTER TABLE venta ADD CONSTRAINT FK_Venta FOREIGN KEY (ID_cliente) REFERENCES cliente (ID_Cliente);




--PRÁCTICA DML

INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (1,'Kary', 'Bautista','Bautista',null,'5367829240','kary@gmail.com','Mexico', 'CDMX','Álvaro Obregón', null, null, null, null,null, 52000, 2000, '2023-04-13','2003-05-28');
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (2,'Oscar', 'Pardo','Sanchez',null,'5363895921','oscar@gmail.com','Mexico', 'Ciudad de México','Hidalgo', null, null, null, null,null, 10000, 1050, '2023-02-21','2002-02-28');
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (3,'Francisco','Pardo','Sanchez',null,'5563882910','francisco12@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 20000, 3050, '2023-01-21','2002-02-28');
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (4,'Osvaldo', 'Pardo','Sanchez','PASO819034','5293545468','osvaldo@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 10000, 1050, '2023-04-19','2002-07-19');
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (5,'Alan', 'Leyva','Navarro',null,'5284950312','alan@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 10000, 1050, '2023-05-28','1995-02-25');
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (6,'Omar', 'Leyva','Navarro',null,'5328945292','omarA@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 48000,20000, '2023-05-20','1995-05-15');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (7,'Jose', 'Canela','Rivera',null,'5396389305','rivera@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 50000, 1900, '2022-12-21','1996-10-21');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (8,'Marie','Castillo','García',null,'5563882920','mariec@gmail.com','Mexico', 'Ciudad de México','Álvaro Obregón', null, null, null, null,null, 80000, 3050, '2023-04-25','1987-05-24');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (9,'Danna Paola', 'Trejo','Castañeda',null,'5459354530','dannaT@gmail.com','Mexico', 'CDMX','GAM', null, null, null, null,null, 10000, 1350, '2023-04-13','2002-08-30');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (10,'Michael', 'Rosales','Martínez','ROMM71892','5628495038','michael@gmail.com','Mexico', 'Ciudad de México','Coyoacán', null, null, null, null,null, 40000, 1050, '2023-02-28','1997-01-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (11,'Robbie', 'Mejía','Navarro',null,'5635328945','robbie@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 30700, 2050, '2023-03-11','1983-10-12');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (12,'Gabriela', 'De Faría','López',null,'5545036782','faria@gmail.com','Mexico', 'CDMX','GAM', null, null, null, null,null, null, 2000, '2023-04-18','2001-05-19');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (13,'Dulce', 'Andrade','Gómez',null,'5536963895','candy@gmail.com','Mexico', 'CDMX','Azcapotzalco', null, null, null, null,null, 33000, 1000, '2023-01-14','2001-10-14');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (14,'Bryan','Villareal','Mouque',null,'5564838290','bryvm@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 58000, 20000, '2023-06-04','1995-09-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (15,'Eduardo', 'Alcaraz','Rodriguez',null,'5462493545','eduardo29@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 10000, 1600, '2023-04-19','1994-02-23');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (16,'Luis', 'Meneses','Martínez',null,'5677284950','luis@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 60000, 15000, '2023-05-28','1994-11-07');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (17,'Donna', 'Summer','Macarti',null,'5532894522','macarty@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 82000,10000, '2023-06-08','1995-12-30');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (18,'Eduardo', 'Pliego','Cárdenas',null,'5528495033','eduardoP@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 60000, 7000, '2023-05-12','1993-03-12');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (19,'Erwin', 'Smith','Nápoles',null,'5432894245','erwin@gmail.com','Mexico', 'Ciudad de México','GAM', null, null, null, null,null, 70000,2000, '2023-03-11','1995-06-29');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (20,'Charlie', 'Cox','Picazo',null,'5643289445','charlie@gmail.com','Mexico', 'Ciudad de México','GAM', null, null, null, null,null, null,7000, '2023-03-10','1998-09-07');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (21,'Sara','Gómez', null ,null,'5536963895','sara@gmail.com','Mexico', 'CDMX','Azcapotzalco', null, null, null, null,null, 3000, 10000, '2012-12-14','2001-10-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (22,'Regina','Blanco','Vázquez',null,'5564838290','regina@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 4000, 8000, '2010-06-04','1995-09-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (23,'Eduardo', 'Pérez','Rodriguez',null,'5462493545','eduardo30@gmail.com','Mexico', 'CDMX','Iztacalco', null, null, null, null,null, 1000, 15000, '2010-04-19','1994-02-23');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (24,'Luis','García', null,null,'5677284950','luisg@gmail.com','Mexico', 'CDMX','Benito Juárez', null, null, null, null,null, 2500, 13000, '2015-12-28','2008-11-07');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (25,'Samuel', 'García', null,null,'5532894522','samu@gmail.com','Mexico', 'CDMX','Iztacalco', null, null, null, null,null, 4200, 12000, '2010-12-08','1995-12-30');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (26,'Regina', 'Moros','García','MOGR118300','5528495033','reginam@gmail.com','Mexico', 'CDMX', null, null, null, null, null,null, 2900, 9000, '2009-02-12','1993-03-12');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (27,'Daniel', 'Pérez','Blanco',null,'5432894245','dan@gmail.com','Mexico', 'CDMX','Benito Juárez', null, null, null, null,null, 3000, 5000, '2010-12-11','2002-06-29');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (28,'Diego', 'Sosa',null,null,'5643289445','dir@gmail.com','Mexico', 'CDMX','GAM', null, null, null, null,null, 5000, 10000, '2010-03-10','2007-09-07');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (29,'Monserrat', 'López','Pérez','LOPM10284','5289894390','monse@gmail.com','Mexico', 'CDMX',null, null, null, null, null,null, 3000, 5000, '2010-12-01','2002-06-29');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (30,'Rick', 'Sánchez',null,null,'5293089445','rickSanchez@gmail.com','Mexico', 'CDMX',null, null, null, null, null,null, 5000, 10000, '2010-03-12','2009-09-07');


INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (1,'LG', '5535678', 'lg@hotmail.com', '849966');
INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (2,'Yamaha','5535678', 'yamaha@hotmail.com', '389646');
INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (3,'Samsung','5535678', 'samsung@hotmail.com', '490507');
INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (4,'Sony','5535678', 'sony@hotmail.com', '2833456');
INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (5,'Dell','5535678', 'dell@hotmail.com', '940673');
INSERT INTO proveedor (ID_Proveedor, nombre, telefono, email, rfc) VALUES (6,'HP','5535678', 'hp@hotmail.com', '020745');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (7,'Microsoft', '5561309901', 'micro@hotmail.com', '245801');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (8,'Xiaomi','5820045', NULL, '383266');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (9,'Motorola','5719495', 'motoc@hotmail.com', '492749');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (10,'Radeon',NULL, 'radeon@hotmail.com', '2833456');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (11,'GHIR','55249958', 'ghir@hotmail.com', '940673');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (12,'OPPO','573906', 'oppo@hotmail.com', '0289955');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (13,'iPhone', '55728578', 'ip@hotmail.com', '862985');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (14,'APPLE','557385', 'apple@hotmail.com', '3728400');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (15,'Logitech','5561894', 'logi@gmail.com', '7290560');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (16,'Under Armour','567385', 'undera@hotmail.com', '729053');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (17,'JBL', '629904', 'jbl@hotmail.com', '62905');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (18,'Moreka','5531893', 'morek@hotmail.com', '7194');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (19,'Xinmi', '56849572', NULL, '285966');
INSERT INTO proveedor (id_proveedor, nombre, telefono, email, rfc) VALUES (20,'Vmex',NULL, 'vmex@hotmail.com', '389279');


INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (1,1,'Tele', 30, 5000, 4000, 3000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (2,1,'DVD', 20, 1500, 1000, 900);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (3,1,'Celular', 3, 2000, 2000, 1200);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (4,2,'Pantalla', 5, 15000, 14000,10000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (5,2,'BlueRay', 10, 5500, 5300, 5000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (6,3,'MP3 Player', 13, 900, 900, 500);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (7,NULL,'Compu', 15, 19000, 17000,11500);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (8,NULL,'Monitor', 10, 19000, 17000, 11500);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (9,3,'Teclado', 120, 220, 180, 250);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (10,2,'Mouse', 35, 80, 50, 75);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (11,1,'Bocina', 10, 250, 210, 260);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (12,3,'Micrófono', 20, 120, 95, 110);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (13,NULL,'WEBCAM', 30, 500, 390, 490);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (14,1,'Consola', 13, 6000, 5500, 5990);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (15,NULL,'XBox', 8, 10000, 8900,9950);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (16,4,'PS4', 7, 12000, 10999, 11500);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (17,4,'PS5', 2, 13950, 12390, 13490);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (18,1,'Nintendo', 4, 10000, 9500, 11000);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (19,2,'Teclado Gamer', 23, 700, 550, 850);
INSERT INTO producto (id_producto, id_proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (20,NULL,'Ventilador', 6, 780, 699, 850);




INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (1, '2020/09/15', 2, (2*2000)+900+(3*5500));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (2, '2020/09/17', 5, (2*5500)+5000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (3, '2020/09/17', 2, (2*15000));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (4, '2022/04/15', 20, (2*4000)+700+(1*10000));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (5, '2023/05/21', 19, (4*3500)+8000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (6, '2023/04/10', 16, (2*8000));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (7, '2021/03/10', 26, (2*250)+(3*700));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (8, '2021/10/19', 18, (2*5500)+11000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (9, '2020/05/29', 7, (2*12000));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (10, '2022/02/13', 8, (2*8000)+500+(3*50));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (11, '2007/12/17', 5, (4*700)+10000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (12, '2009/11/24', 6, (2*1000));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (13, '2018/05/18', 10, (3*60)+800);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (14, '2022/08/16', 11, (2*55)+9000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (15, '2019/05/7', 12, 11000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (16, '2020/06/09', 14, (4*500)+280+(5*100));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (17, '2019/10/15', 17, (3*100)+700);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (18, '2021/12/28', 15, (5*70));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (19, '2023/06/22', 13, (2*800)+200+(3*150));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (20, '2022/08/16', 9, (3*650)+11000);


UPDATE cliente
	SET direccion_estado='CDMX'
	WHERE dirección_estado='Ciudad de México'; --se actualizaron 8 registros

UPDATE producto
	SET nombre='Televisor'
	WHERE nombre='Tele'; --se actualizo 1 registro



--PRACTICA SELECT SELECCION
SELECT * FROM cliente WHERE nombre = 'Eduardo';
SELECT * FROM cliente WHERE nombre <> 'Eduardo';
SELECT * FROM cliente WHERE credito > 5000;
SELECT * FROM cliente WHERE credito < 5000;
SELECT * FROM cliente WHERE direccion_delegacion = 'Iztacalco';
SELECT * FROM producto WHERE preciosugeridoventa > 5000;
SELECT * FROM producto WHERE existencia < 5;
SELECT * FROM cliente WHERE (deuda/6) > 1000;
SELECT * FROM cliente WHERE (credito - deuda) <= 3000;
SELECT * FROM cliente WHERE (deuda * 1.2) > 20000;



--PRACTICA SELECT VALORES NULOS

SELECT nombre, credito FROM cliente WHERE credito IS NULL;
SELECT * FROM cliente WHERE segundoapellido IS NULL;
SELECT * FROM cliente WHERE rfc IS NOT NULL;
SELECT * FROM cliente WHERE correoelectronico IS NOT NULL;
SELECT * FROM producto WHERE preciosugeridoventa IS NOT NULL;
SELECT * FROM cliente WHERE direccion_delegacion IS NULL;


--PRACTICA SELECT OPERADORES LÓGICOS
SELECT * FROM cliente WHERE NOT (nombre = 'Eduardo' OR nombre = 'Juan'); 
SELECT * FROM cliente WHERE credito BETWEEN 5000 AND 10000; 
SELECT * FROM cliente WHERE nombre = 'Eduardo' AND primerapellido = 'Martinez';
SELECT * FROM cliente WHERE (NOT nombre = 'Juan') AND primerapellido = 'Alvarado';
SELECT * FROM cliente WHERE nombre = 'Blanca' OR primerapellido = 'Rodríguez';
SELECT * FROM cliente WHERE primerapellido = 'Paz' OR segundoapellido = 'Paz';
SELECT * FROM cliente WHERE primerapellido='Ambriz' OR primerapellido= 'Pérez' OR primerapellido =  'García';
SELECT * FROM cliente WHERE nombre= 'Abril' AND (primerapellido =  'Govea' OR primerapellido = 'Pérez');
SELECT * FROM cliente WHERE direccion_delegacion = 'Iztacalco' OR direccion_delegacion = 'GAM' OR direccion_delegacion = 'Benito Juárez';






















--PRACTICA ÚLT
CREATE VIEW infoClientePorDelegacion
AS
SELECT direccion_delegacion, COUNT(*)NumClientes,
	AVG(deuda)PromedioDeuda,
	AVG(credito)PromedioCredito
FROM cliente
GROUP BY direccion_pais, direccion_estado, direccion_delegacion;



CREATE FUNCTION valor(valor numeric, porc numeric)
RETURNS numeric AS
$$
DECLARE 
Resultado numeric:=0;
BEGIN
Resultado:=valor*(porc/100);
RAISE NOTICE 'El % por ciento de % es %', porc, valor, Resultado;
RETURN Resultado;
END;
$$
LANGUAGE PLPGSQL;
--se manda a llamar la función
SELECT valor(100,110);




INSERT
UPDATE cliente
	SET deuda = 2000 
	WHERE id_cliente = 1;
UPDATE cliente
	SET deuda = 1050
	WHERE id_cliente = 2;
UPDATE cliente
	SET deuda = 3050
	WHERE id_cliente = 3;	
UPDATE cliente
	SET deuda = 1050
	WHERE id_cliente = 4;
UPDATE cliente
	SET deuda = 1050
	WHERE id_cliente = 5;
UPDATE cliente
	SET deuda = 20000
	WHERE id_cliente = 6;
UPDATE cliente
	SET deuda = 1900
	WHERE id_cliente = 7;
UPDATE cliente
	SET deuda = 3050
	WHERE id_cliente = 8;
UPDATE cliente
	SET deuda = 1350
	WHERE id_cliente = 9;
UPDATE cliente
	SET dedua = 1050
	WHERE id_cliente = 10;
UPDATE cliente
	SET deuda = 2050
	WHERE id_cliente = 11;
UPDATE cliente
	SET deuda = 2000
	WHERE id_cliente = 12;
UPDATE cliente
	SET deuda = 1000
	WHERE id_cliente = 13;
UPDATE cliente
	SET deuda = 20000
	WHERE id_cliente = 14;
UPDATE cliente
	SET deuda = 1600
	WHERE id_cliente = 15;
UPDATE cliente
	SET deuda = 15000
	WHERE id_cliente = 16;
UPDATE cliente
	SET deuda = 10000
	WHERE id_cliente = 17;
UPDATE cliente
	SET deuda = 7000
	WHERE id_cliente = 18;
UPDATE cliente
	SET deuda = 2000
	WHERE id_cliente = 19;
UPDATE cliente
	SET deuda = 7000
	WHERE id_cliente = 20;
UPDATE cliente
	SET deuda = 10000
	WHERE id_cliente = 21;
UPDATE cliente
	SET deuda =8000
	WHERE id_cliente = 22;
UPDATE cliente
	SET deuda = 15000
	WHERE id_cliente = 23;
UPDATE cliente
	SET deuda = 13000
	WHERE id_cliente = 24;
UPDATE cliente
	SET deuda = 12000
	WHERE id_cliente = 25;
UPDATE cliente
	SET deuda = 9000
	WHERE id_cliente = 26;
UPDATE cliente
	SET deuda = 5000
	WHERE id_cliente = 27;
UPDATE cliente
	SET deuda = 10000
	WHERE id_cliente = 28;
UPDATE cliente
	SET deuda = 5000
	WHERE id_cliente = 29;
UPDATE cliente
	SET deuda = 10000
	WHERE id_cliente = 30;