--PRACTICA FUNCIONES CADENA
SELECT LEFT(nombre,3) FROM cliente;
SELECT RIGHT(nombre,3) FROM cliente;
SELECT SUBSTR(nombre, 2, 4) FROM cliente;
SELECT REPLACE(nombre, 'd', 's') FROM cliente;
SELECT LENGTH(primerapellido) FROM cliente;
SELECT UPPER(nombre) FROM cliente;
SELECT LOWER(primerapellido) FROM cliente;
SELECT REPLACE(direccion_delegacion, 'Benito Juárez', 'B. Juárez') FROM cliente;
SELECT CONCAT(UPPER(primerapellido),' ',segundoapellido, ' ', nombre) FROM cliente;
SELECT REPLACE (nombre, 'e', '3') FROM cliente WHERE nombre LIKE '%e%';
SELECT REPLACE (nombre, 'o', '0') FROM cliente WHERE nombre LIKE '%o%';


