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
  credito varchar(50),
  deuda varchar(50),
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
INSERT INTO cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (6,'Omar', 'Leyva','Navarro',null,'5328945292','omarA@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 48000,1050, '2023-05-20','1995-05-15');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (7,'Jose', 'Canela','Rivera',null,'5396389305','rivera@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 50000, 1900, '2022-12-21','1996-10-21');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (8,'Marie','Castillo','García',null,'5563882920','mariec@gmail.com','Mexico', 'Ciudad de México','Álvaro Obregón', null, null, null, null,null, 80000, 3050, '2023-04-25','1987-05-24');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (9,'Danna Paola', 'Trejo','Castañeda',null,'5459354530','dannaT@gmail.com','Mexico', 'CDMX','GAM', null, null, null, null,null, 10000, 1350, '2023-04-13','2002-08-30');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (10,'Michael', 'Rosales','Martínez','ROMM71892','5628495038','michael@gmail.com','Mexico', 'Ciudad de México','Coyoacán', null, null, null, null,null, 40000, 1050, '2023-02-28','1997-01-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (11,'Robbie', 'Mejía','Navarro',null,'5635328945','robbie@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 30700, 2050, '2023-03-11','1983-10-12');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (12,'Gabriela', 'De Faría','López',null,'5545036782','faria@gmail.com','Mexico', 'CDMX','GAM', null, null, null, null,null, 19000, 2000, '2023-04-18','2001-05-19');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (13,'Dulce', 'Andrade','Gómez',null,'5536963895','candy@gmail.com','Mexico', 'CDMX','Azcapotzalco', null, null, null, null,null, 33000, 1000, '2023-01-14','2001-10-14');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (14,'Bryan','Villareal','Mouque',null,'5564838290','bryvm@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 58000, 3050, '2023-06-04','1995-09-20');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (15,'Eduardo', 'Alcaraz','Rodriguez',null,'5462493545','eduardo29@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 10000, 1600, '2023-04-19','1994-02-23');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (16,'Luis', 'Meneses','Martínez',null,'5677284950','luis@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 60000, 3000, '2023-05-28','1994-11-07');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (17,'Donna', 'Summer','Macarti',null,'5532894522','macarty@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 82000,1200, '2023-06-08','1995-12-30');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (18,'Eduardo', 'Pliego','Cárdenas',null,'5528495033','eduardoP@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 60000, 7000, '2023-05-12','1993-03-12');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (19,'Erwin', 'Smith','Nápoles',null,'5432894245','erwin@gmail.com','Mexico', 'Ciudad de México','GAM', null, null, null, null,null, 70000,2000, '2023-03-11','1995-06-29');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (20,'Charlie', 'Cox','Picazo',null,'5643289445','charlie@gmail.com','Mexico', 'Ciudad de México','GAM', null, null, null, null,null, 30000,7000, '2023-03-10','1998-09-07');
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



INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (1,1,'Tele', 30, 5000, 4000, 3000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (2,1,'DVD', 20, 1500, 1000, 900);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (3,1,'Celular', 3, 2000, 2000, 1200);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (4,2,'Pantalla', 5, 15000, 14000,10000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (5,2,'BlueRay', 10, 5500, 5300, 5000);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (6,3,'MP3 Player', 13, 900, 900, 500);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (7,NULL,'Compu', 15, 19000, 17000,11500);
INSERT INTO producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) VALUES (8,NULL,'Monitor', 10, 19000, 17000, 11500);



INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (1, '2020/09/15', 2, (2*2000)+900+(3*5500));
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (2, '2020/09/17', 5, (2*5500)+5000);
INSERT INTO venta (ID_Venta, fecha, ID_Cliente, montoTotal) VALUES (3, '2020/09/17', 2, (2*15000));


UPDATE cliente
	SET direccion_estado='CDMX'
	WHERE dirección_estado='Ciudad de México'; --se actualizaron 8 registros

UPDATE producto
	SET nombre='Televisor'
	WHERE nombre='Tele'; --se actualizo 1 registro


--PRACTICA SELECT SELECCION
SELECT * FROM cliente WHERE nombre = 'Eduardo';
SELECT * FROM cliente WHERE nombre <> 'Eduardo';





















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