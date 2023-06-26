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