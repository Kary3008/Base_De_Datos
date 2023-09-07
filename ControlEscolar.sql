CREATE TABLE escuela(
	id_escuela INTEGER,
	clave_e CHARACTER VARYING(50),
	nombre_e CHARACTER VARYING(50),
	direccion_calle CHARACTER VARYING(200),
	direccion_col CHARACTER VARYING(200),
	direccion_noint CHARACTER VARYING(100),
	direccion_noext CHARACTER VARYING(100),
	direccion_cp CHARACTER VARYING(100),
	direccion_delegacion CHARACTER VARYING(200),
	telefono CHARACTER VARYING(50),
	correo CHARACTER VARYING(200)
);

CREATE TABLE carrera(
	id_carrera INTEGER,
	clave_c CHARACTER VARYING(100),
	nombre_c CHARACTER VARYING(200),
	id_escuela INTEGER,
	id_area INTEGER
);

CREATE TABLE grupo(
	id_grupo INTEGER,
	nombre_g CHARACTER VARYING(200),
	capacidad INTEGER,
	id_carrera INTEGER	
);

CREATE TABLE area(
	id_area INTEGER,
	nombre_a CHARACTER VARYING(200)
);

CREATE TABLE alumno(
	id_alumno INTEGER,
	boleta CHARACTER VARYING(50),
	id_personas INTEGER,
	id_tipo INTEGER
);

CREATE TABLE semestre(
	id_semestre INTEGER,
	nombre_s CHARACTER VARYING(200)
);

CREATE TABLE periodoescolar(
	clave_pe INTEGER,
	periodo INTEGER,
	id_semestre INTEGER
);

CREATE TABLE materia(
	id_materia INTEGER,
	nombre_m CHARACTER VARYING(200),
	creditos INTEGER,
	id_semestre INTEGER,
);

CREATE TABLE impartir_clase(
	id_profesor INTEGER,
	id_materia INTEGER,
	ult_anio DATE,
	clave_pe INTEGER,
	id_alumno INTEGER
);

CREATE TABLE profesor(
	id_profesor INTEGER,
	cedula CHARACTER VARYING(100),
	grado_academico INTEGER,
	especialidad CHARACTER VARYING(300),
	id_personas INTEGER,
	id_tipo INTEGER
);

CREATE TABLE personas(
	id_personas INTEGER,
	nombre_p CHARACTER VARYING(200),
	apellido_p CHARACTER VARYING(200),
	apellido_m CHARACTER VARYING(200),
	sexo CHARACTER VARYING(50),
	direccion_calle CHARACTER VARYING(200),
	direccion_col CHARACTER VARYING(200),
	direccion_noint CHARACTER VARYING(100),
	direccion_noext CHARACTER VARYING(100),
	direccion_cp CHARACTER VARYING(100),
	direccion_delegacion CHARACTER VARYING(200),
	telefono CHARACTER VARYING(50),
	correo CHARACTER VARYING(200)
);

CREATE TABLE empleado(
	id_empleado INTEGER,
	usuario CHARACTER VARYING(100),
	contraseña CHARACTER VARYING(200),
	id_tipo INTEGER,
	estado CHARACTER VARYING(200),
	fecha_acceso DATE
);

CREATE TABLE tipo(
	id_tipo INTEGER,
	nombre_t CHARACTER VARYING(200)
);

CREATE TABLE inscripcion(
	no_ficha INTEGER,
	fecha_insc DATE,
	id_empleado INTEGER,
	id_alumno INTEGER,
	id_grupo INTEGER
);


--LLAVES PRIMARIAS
ALTER TABLE escuela ADD PRIMARY KEY (id_escuela);
ALTER TABLE carrera ADD PRIMARY KEY (id_carrera);
ALTER TABLE grupo ADD PRIMARY KEY (id_grupo);
ALTER TABLE area ADD PRIMARY KEY (id_area);
ALTER TABLE alumno ADD PRIMARY KEY (id_alumno);
ALTER TABLE semestre ADD PRIMARY KEY (id_semestre);
ALTER TABLE periodoescolar ADD PRIMARY KEY (clave_pe);
ALTER TABLE materia ADD PRIMARY KEY (id_materia);
ALTER TABLE profesor ADD PRIMARY KEY (id_profesor);
ALTER TABLE personas ADD PRIMARY KEY (id_personas);
ALTER TABLE empleado ADD PRIMARY KEY (id_empleado);
ALTER TABLE tipo ADD PRIMARY KEY (id_tipo);


--CLAVES FORÁNEAS
ALTER TABLE carrera ADD CONSTRAINT FK_Carrera1 FOREIGN KEY (id_escuela) REFERENCES escuela (id_escuela);
ALTER TABLE carrera ADD CONSTRAINT FK_Carrera2 FOREIGN KEY (id_area) REFERENCES area (id_area);
ALTER TABLE grupo ADD CONSTRAINT FK_Grupo FOREIGN KEY (id_carrera) REFERENCES carrera (id_carrera);
ALTER TABLE alumno ADD CONSTRAINT FK_Alumno1 FOREIGN KEY (id_tipo) REFERENCES tipo (id_tipo);
ALTER TABLE alumno ADD CONSTRAINT FK_Alumno2 FOREIGN KEY (id_personas) REFERENCES personas (id_personas);
ALTER TABLE periodoescolar ADD CONSTRAINT FK_Periodo FOREIGN KEY (id_semestre) REFERENCES semestre (id_semestre);
ALTER TABLE materia ADD CONSTRAINT FK_Materia1 FOREIGN KEY (id_semestre) REFERENCES semestre (id_semestre);
ALTER TABLE profesor ADD CONSTRAINT FK_Profesor1 FOREIGN KEY (id_personas) REFERENCES personas (id_personas);
ALTER TABLE profesor ADD CONSTRAINT FK_Profesor2 FOREIGN KEY (id_tipo) REFERENCES tipo (id_tipo);
ALTER TABLE empleado ADD CONSTRAINT FK_Empleado FOREIGN KEY (id_tipo) REFERENCES tipo (id_tipo);
ALTER TABLE impartir_clase ADD CONSTRAINT FK_Clase1 FOREIGN KEY (id_materia) REFERENCES materia (id_materia);
ALTER TABLE impartir_clase ADD CONSTRAINT FK_Clase2 FOREIGN KEY (id_profesor) REFERENCES profesor (id_profesor);
ALTER TABLE impartir_clase ADD CONSTRAINT FK_Clase3 FOREIGN KEY (clave_pe) REFERENCES periodoescolar (clave_pe);
ALTER TABLE impartir_clase ADD CONSTRAINT FK_Clase4 FOREIGN KEY (id_alumno) REFERENCES alumno (id_alumno);
ALTER TABLE inscripcion ADD CONSTRAINT FK_Insc1 FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado);
ALTER TABLE inscripcion ADD CONSTRAINT FK_Insc2 FOREIGN KEY (id_alumno) REFERENCES alumno (id_alumno);
ALTER TABLE inscripcion ADD CONSTRAINT FK_Insc3 FOREIGN KEY (id_grupo) REFERENCES grupo (id_grupo);


--REGISTROS
Insert into escuela(id_escuela, clave_e, 
nombre_e, direccion_calle, direccion_col, 
direccion_noint, direccion_noext, 
direccion_cp, direccion_delegacion, 
telefono, correo) values 
(101, '1E122', 'ESCOM', NULL, 
'Lindavista', 34, 10, 54234, 'Gustavo A. 
Madero', '5534567890', 
'escom@ipn.com'), 
(102, '1Q132', 'UPIBI', NULL, 'Ticomán', 
08, 14, 07340, 'Gustavo A. Madero', 
'5545678901', 'upibi@ipn.com'), 
(103, '2W213', 'UPIITA', NULL, 'Ticomán', 
2580, 56806, 20712, 'Gustavo A. 
Madero', '5556789012', 
'upiita@ipn.com'), 
(104, '2R432', 'ESIQIE', 'Edificio 7', 
'Lindavista', NULL, NULL, 07738, 
'Gustavo A. Madero', '5567890123', 
'esiqie@ipn.com'), 
(105, '3T871', 'ESIME Z', NULL, 'Roma', 
NULL, 28, 07788, 'Cuautémoc', 
'5678901234', 'esimez@ipn.com'), 
(106, '6Y123', 'ESCA', NULL, 'Del Valle', 
12, 65, 54120, 'Cuauhtémoc', 
'5589012345', 'esca@ipn.com'), 
(107, '7U098', 'EST', NULL, 'Lindavista', 
NULL, NULL, 12120, 'Gustavo A. 
Madero', '5590123456', 'est@ipn.com'), 
(108, '8I876', 'ESFM', NULL, 'Lindavista', 
NULL, 07321, 07120, 'Álvaro Obregón', 
'5501234567', 'esfm@ipn.com'), 
(109, '9O241', 'UPIICSA', NULL, 
'Granjas', NULL, 950, 08400, 'Iztacalco', 
'5512345678', 'upiicsa@ipn.com'), 
(110, '4P723', 'ESIA', NULL, 
'Tecamachalco', NULL, 627, 12345, 
'Álvaro Obregón', '5523456789', 
'esia@ipn.com');

insert into area(id_area, 
nombre_a)values
(301, 'Físico-Matemático'),
(302, 'Ciencias Médicas y Biológicas'),
(303, 'Ciencias Médicas y Biológicas'),
(304, 'Físico-Matemático'),
(305, 'Físico-Matemático'),
(306, 'Ciencias Sociales'),
(307, 'Ciencias Sociales'),
(308, 'Físico-Matemático'),
(309, 'Físico-Matemático'),
(310, 'Físico-Matemático');

insert into carrera(id_carrera, clave_c, 
nombre_c, id_escuela, id_area)values
(201, '9A123', 'Ingeniería en Sistemas 
Computacionales', 101, 301 ),
(202, '8S432', 'Ingeniería Biomédica', 
102, 302 ),
(203, '7D519', 'Ingeniería Biónica', 103, 
303),
(204, '6F529', 'Ingeniería Química 
Industrial', 104, 304),
(205, '5G771', 'Ingeniería en Sistemas 
Automotrices', 105, 305),
(206, '8H320', 'Licenciatura en Negocios 
Internacionales', 106, 306),
(207, '1J165', 'Lincenciatura en Turismo', 
107, 307),
(208, '3K401', 'Licenciatura en Físca', 
108, 308),
(209, '5L729', 'Ingeniería Petrolera', 109, 
309),
(210, '7Z265', 'Ingeniería Industrial', 110, 
310);

insert into grupo(id_grupo, nombre_g, 
capacidad, id_carrera)values
(401, '1SC3', 20, 201),
(402, '1BM2', 25, 202),
(403, '1BN5', 30, 203),
(404, '1IQ2', 35, 204),
(405, '1SA4', 30, 205),
(406, '1NI6', 28, 206),
(407, '1LT8', 30, 207),
(408, '1LF7', 27, 208),
(409, '1IP0', 32, 209),
(410, '1ID4', 31, 210);


insert into tipo (id_tipo,nombre_t)
values 
(1001,'alumno'),
(1002,'profesor'),
(1003,'empleado');

insert into empleado(id_empleado, 
usuario, contraseña, id_tipo, estado, 
fecha_acceso)values
(111, 'usuario1', 'escomisc', 1003, 
'México', '2023-01-12'),
(112, 'usuario2', 'biomedic', 1003, 
'México', '2023-02-01'),
(113, 'usuario3', 'bionic3', 1003, 
'Zacatecas', '2023-08-29'),
(114, 'usuario4', 'ingequi', 1003, 'Hidalgo', 
'2023-09-13'),
(115, 'usuario5', 'sistauto', 1003, 'México', 
'2022-12-25'),
(116, 'usuario6', 'negin98', 1003, 'Nuevo 
León', '2023-01-03'),
(117, 'usuario7', 'turis123', 1003, 'México',  '2023-02-28'),
(118, 'usuario8', 'fisca56', 1003, 
'Querétaro', '2023-03-18'),
(119, 'usuario9', 'pemexxd0', 1003, 
'Veracruz', '2022-12-13'),
(120, 'usuario', 'industri2', 1003, 'México', 
'2023-07-23');

insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(501,'juan','Gonzalez','López','Masculino','
manzanos','EL 
potrito',15,20,67500,'GAM',5601010101,'juanGL@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(502,'jose','Jimenez','Hernandez','Masculi
no','gladiolas','Lomas de 
Tecamac',30,10,66570,'Tecamac',5601010102,'joseJH@gmail.com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(503,'Rosa','Hernandez','Medina','Femeni
no','Asucenas','Lomas de 
Tecamac',7,18,66570,'Tecamac',5601010103,'rosaHM@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(504,'Eustaquio','Olivares','Herrera','Masc
ulino','Asucenas','Lomas de 
Tecamac',18,18,66570,'Tecamac',5601010104,'eustaquioOH@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(505,'Francisco','Valles','Herrera','Masculi
no','Gladiolas','GAM',30,19,66570,null,5601010105,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(506,'Alexander','Ortega','Sanchez','Masc
ulino','Bombas','GAM',130,19,62566,null,5601010106,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(507,'Karina','Bautista','Bautista','Femenin
o','Limones','Lindavista',71,68,66570,'GA
M',5601010107,'karinaBB@gmail.com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(508,'Leonardo','Bautizta','Valdez','Mascu
lino','Manzanas','GAM',17,99,67050,'Lind
avista',5601010108,'leonardoBV@gmail.
com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(509,'Bernardo','Gómez','Morales','Mascu
lino','Cañamo','El 
miau',165,290,29970,'Ecatepec',5601010109,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(510,'Daniel','Vázquez','Reyes','Masculin
o','Coral','GAM',17,8,29970,'Ecatepec',5601010109,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(511,'Dante','Romero','Álvarez','Masculino','manzanos','EL potrito',15,20,67500,'GAM',5601010111,'GL@gmail.com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(512,'Bernardo','Gómez','Morales','Masculino','gladiolas','Lomas de Tecamac',30,10,66570,'Tecamac',5601010112,'JH@gmail.com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(513,'Vale','Moreno','Castillo','Masculino','Asucenas','Lomas de Tecamac',7,18,66570,'Tecamac',5601010113,'HM@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(514,'Ernesto','Aguilar','Ortiz','Masculino','Asucenas','Lomas de Tecamac',18,18,66570,'Tecamac',5601010114,'OH@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(515,'Francisco','Valles','Herrera','Masculino','Gladiolas','GAM',30,19,66570,null,5601010115,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(516,'Alexander','Ortega','Sanchez','Masculino','Bombas','GAM',130,19,62566,null,5601010116,null);
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(517,'Karina','Bautista','Bautista','Femenino','Limones','Lindavista',71,68,66570,'GAM',5601010117,'BB@gmail.com');
insert into personas(id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo) values 
(518,'Leonardo','Bautista','Valdez','Masculino','Manzanas','GAM',17,99,67050,'Lindavista',5601010118,'BV@gmail.com');
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(519,'Bernardo','Gómez','Morales','Mascuino','Cañamo','El miau',165,290,29970,'Ecatepec',5601010119,null);
insert into personas (id_personas,nombre_p,apellido_p,apellido_m,
					  sexo,direccion_calle,direccion_col,direccion_noint,direccion_noext,
					  direccion_cp,direccion_delegacion,telefono,correo)values 
(520,'Daniel','Vázquez','Reyes','Masculino','Coral','GAM',17,8,29970,'Ecatepec',5601010120,null);


insert into alumno(id_alumno, boleta, 
id_personas, id_tipo)values
(211, '2022630008', 501, 1001),
(212, '2021121231', 502, 1001),
(213, '2022992211', 503, 1001),
(214, '2022641123', 504, 1001),
(215, '2023980123', 505, 1001),
(216, '2021000192', 506, 1001),
(217, '2022982233', 507, 1001),
(218, '2021342255', 508, 1001),
(219, '2022120098', 509, 1001),
(220, '2021639870', 510, 1001);


insert into inscripcion(no_ficha, 
fecha_insc, id_empleado, id_alumno, 
id_grupo)values
(1, '2022-08-17', 111, 211, 401),
(2, '2022-08-17', 112, 212, 402),
(3, '2022-08-18', 113, 213, 403),
(4, '2022-08-19', 114, 214, 404),
(5, '2022-08-17', 115, 215, 405),
(6, '2022-08-18', 116, 216, 406),
(7, '2022-08-19', 117, 217, 407),
(8, '2022-08-19', 118, 218, 408),
(9, '2022-08-18', 119, 219, 409),
(10, '2022-08-17', 120, 220, 410);

insert into semestre 
(id_semestre,nombre_s)
values
(601, 'Primer semestre'),
(602, 'segundo semestre'),
(603, 'tercere semestre'),
(604, 'cuarto semestre'),
(605, 'Quinto semestre'),
(606, 'sexto semestre'),
(607, 'Septimo semestre'),
(608, 'octavo semestre'),
(609, 'noveno semestre'),
(610, 'decimo semestre');

insert into materia 
(id_materia,nombre_m,creditos,id_semestre)
values
(701, 'Calculo',7.5,601),
(702, 'Calculo aplicacado',7.5,602),
(703, 'Bases de datos',7.5,603),
(704, 'Electronica analogica',7.5,603),
(705, 'Matematicas Discretas',7.5,601),
(706, 'Fundammentos de 
programacion',7.5,601),
(707, 'Fundamentos 
Economicos',7.5,602),
(708, 'algebra lineal',7.5,602),
(709, 'Ecuaciones dif',7.5,603),
(710, 'Probabilidad y 
estadistica',7.5,604);

insert into profesor 
(id_profesor,cedula,grado_academico,id_personas,id_tipo)
values
(801,1234567891,1,511,1002),
(802,1234567892,1,512,1002),
(803,1234567893,1,513,1002),
(804,1234567894,2,514,1002),
(805,1234567895,2,515,1002),
(806,1234567896,3,516,1002),
(807,1234567897,3,517,1002),
(808,1234567898,4,518,1002),
(809,1234567899,5,519,1002),
(810,1234567810,6,520,1002);

insert into 
periodoescolar(clave_pe,periodo,id_semestre)values
(901,20231,601),
(902,20232,601),
(903,20211,602),
(904,20212,602),
(905,20201,603),
(906,20202,604),
(907,20191,605),
(908,20192,606),
(909,20181,607),
(910,20182,608);


insert into 
impartir_clase(id_profesor,id_materia,ult_anio,clave_pe,id_alumno)values
(801,701,'2022-02-01',901,211),
(802,702,'2022-08-01',901,211),
(803,703,'2022-02-01',901,212),
(804,704,'2021-02-01',901,214),
(805,705,'2021-02-01',902,213),
(806,706,'2020-02-01',902,215),
(807,707,'2020-02-01',902,216),
(808,708,'2022-02-01',902,217),
(809,709,'2022-02-01',903,218),
(810,710,'2022-02-01',903,219);

