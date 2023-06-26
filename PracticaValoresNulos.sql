--PRACTICA SELECT VALORES NULOS

SELECT nombre, credito FROM cliente WHERE credito IS NULL;
SELECT * FROM cliente WHERE segundoapellido IS NULL;
SELECT * FROM cliente WHERE rfc IS NOT NULL;
SELECT * FROM cliente WHERE correoelectronico IS NOT NULL;
SELECT * FROM producto WHERE preciosugeridoventa IS NOT NULL;
SELECT * FROM cliente WHERE direccion_delegacion IS NULL;
