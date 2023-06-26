--PRACTICA FUNCIONES CADENA
SELECT REPLACE(
	REPLACE(
		REPLACE(
			REPLACE(nombre,'A','@'),
			'E','3'),'
			I','!'),
			'O','0') 
	FROM cliente;
SELECT CONCAT(UPPER(SUBSTR(nombre,1,2)),
	SUBSTR(nombre,3)) 
	FROM cliente;
SELECT SUBSTR(nombre, 1, LENGTH(nombre) - 1) || 
	UPPER(SUBSTR(nombre, LENGTH(nombre))) 
	FROM cliente;
SELECT SUBSTR(nombre, 1, 2) ||
	UPPER(SUBSTR(nombre,3,1)) || 
	SUBSTR(nombre, 4) 
	FROM cliente;
SELECT SUBSTR(nombre, 1,1) || 
	UPPER(SUBSTR(nombre,2,1)) || 
	SUBSTR(nombre, 3,1) || 
	UPPER(SUBSTR(nombre,4,1)) || 
	SUBSTR(nombre,5) 
	FROM cliente;
SELECT LEFT(nombre, 1) || 
	UPPER(SUBSTR(nombre,2,1)) ||  
	SUBSTR(nombre, 3, LENGTH(nombre) - 3) || 
	UPPER(RIGHT(nombre, 1)) 
	FROM cliente;
SELECT REPLACE(REPLACE(REPLACE(nombre,SUBSTRING(nombre,2,1),
		UPPER(SUBSTRING(nombre,2,1))),
		SUBSTRING(nombre,4,1),
		UPPER(SUBSTRING(nombre,4,1))),
		SUBSTRING(nombre, LENGTH(nombre)-1,1 ),
		UPPER(SUBSTRING(nombre, LENGTH(nombre)-1,1)))
	FROM cliente;
