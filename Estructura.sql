--PRÁCTICA SQL
--EJERCICIO 1
CREATE TABLE cliente (
  ID_Cliente int NOT NULL,
  nombre varchar(50) NOT NULL,
  primerApellido varchar(50) NOT NULL,
  segundoApellido varchar(50) NOT NULL,
  rfc varchar(50),
  telefono varchar(50) NOT NULL,
  correoElectronico varchar(200) NOT NULL,
  direccion_pais varchar(100) NOT NULL,
  direccion_estado varchar(100) NOT NULL,
  direccion_delegacion varchar(100) NOT NULL,
  direccion_colonia varchar(100),
  direccion_calle varchar(100),
  direccion_numext varchar(100),
  direccion_numint varchar(100),
  direccion_cp varchar(6),
  credito varchar(50) NOT NULL,
  deuda varchar(50) NOT NULL,
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

--
-- Filtros para la tabla `producto_vendido`
--
ALTER TABLE producto_vendido ADD CONSTRAINT FK_ProductoVendido1 FOREIGN KEY (ID_Venta) REFERENCES venta (ID_Venta), ADD CONSTRAINT FK_ProductoVendido2 FOREIGN KEY (ID_Producto) REFERENCES producto (ID_Producto);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE venta ADD CONSTRAINT FK_Venta FOREIGN KEY (ID_cliente) REFERENCES cliente (ID_Cliente);


--PRÁCTICA DML

INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (1,'Kary', 'Bautista','Bautista',null,'536782','kary@gmail.com','Mexico', 'CDMX','Álvaro Obregón', null, null, null, null,null, 5000, 2000, '2023-04-13','2003-05-28');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (2,'Oscar', 'Pardo','Sanchez',null,'5363895','oscar@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 10000, 1050, '2023-02-21','2002-02-28');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (3,'Francisco','Pardo','Sanchez',null,'556388290','francisco12@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 20000, 3050, '2023-01-21','2002-02-28');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (4,'Osvaldo', 'Pardo','Sanchez',null,'5293545','osvaldo@gmail.com','Mexico', 'CDMX','Hidalgo', null, null, null, null,null, 10000, 1050, '2023-04-19','2002-07-19');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (5,'Alan', 'Leyva','Navarro',null,'52849503','alan@gmail.com','Mexico', 'CDMX','Coyoacán', null, null, null, null,null, 10000, 1050, '2023-05-28','1995-02-25');
INSERT INTO Cliente (ID_Cliente, nombre, primerApellido, segundoApellido, rfc, telefono, correoElectronico, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numext, direccion_numint, direccion_cp, credito, deuda, fecha_alta, fecha_nac) values (6,'Omar', 'Leyva','Navarro',null,'5328945','omarA@gmail.com','Mexico', 'Ciudad de México','Cuauhtemoc', null, null, null, null,null, 3000,1050, '2023-05-20','1995-05-15');





Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (1,'LG', '5535678', 'lg@hotmail.com', '23456');
Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (2,'Yamaha','5535678', 'yamaha@hotmail.com', '23456');
Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (3,'Samsung','5535678', 'samsung@hotmail.com', '23456');
Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (4,'Sony','5535678', 'sony@hotmail.com', '23456');
Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (5,'Dell','5535678', 'dell@hotmail.com', '23456');
Insert into Proveedor (ID_Proveedor, nombre, telefono, email, rfc) values (6,'HP','5535678', 'hp@hotmail.com', '23456');




Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (1,1,'Tele', 30, 5000, 4000, 3000);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (2,1,'DVD', 20, 1500, 1000, 900);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (3,1,'Celular', 3, 2000, 2000, 1200);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (4,2,'Pantalla', 5, 15000, 14000,10000);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (5,2,'BlueRay', 10, 5500, 5300, 5000);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (6,3,'MP3 Player', 13, 900, 900, 500);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (7,6,'Compu', 15, 19000, 17000,11500);
Insert into Producto (ID_Producto, ID_Proveedor, nombre, existencia, precioSugeridoVenta, precioMinimo, precioCompra) values (8,5,'Monitor', 10, 19000, 17000, 11500);


INSERT INTO Venta (ID_Venta, fecha, ID_Cliente, montoTotal) values (1, '2020/09/15', 2, (3*2000)+900+(3*5500));
INSERT INTO Venta (ID_Venta, fecha, ID_Cliente, montoTotal) values (2, '2020/09/17', 5, (2*5500)+5000);
INSERT INTO Venta (ID_Venta, fecha, ID_Cliente, montoTotal) values (3, '2020/09/17', 2, (2*15000));

