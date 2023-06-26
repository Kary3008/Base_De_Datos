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
	id_alumno INTEGER
);

CREATE TABLE impartir_clase(
	id_profesor INTEGER,
	id_materia INTEGER,
	ult_anio DATE,
	clave_pe CHARACTER VARYING(100),
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
	id_personas INTEGER
	nombre CHARACTER VARYING(200),
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


