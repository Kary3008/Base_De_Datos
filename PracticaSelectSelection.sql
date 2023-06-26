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

