--PRACTICA SELECT OPERADORES ESPECIALES
SELECT * FROM cliente WHERE credito BETWEEN 5000 AND 10000;
SELECT * FROM cliente WHERE direccion_delegacion IN ('Iztacalco', 'Coyoacán', 'Benito Juárez');
SELECT * FROM cliente WHERE deuda BETWEEN 10000 AND 15000 AND (deuda/6) BETWEEN 500 AND 1000;
SELECT * FROM cliente WHERE direccion_delegacion IN ('Iztacalco', 'Coyoacán', 'Benito Juárez') AND deuda BETWEEN 10000 AND 15000;
SELECT * FROM cliente WHERE direccion_delegacion IN ('Iztacalco', 'Coyoacán', 'Benito Juárez') AND primerapellido = 'Blanco';
SELECT * FROM cliente WHERE direccion_delegacion IN ('Iztacalco', 'Coyoacán', 'Benito Juárez') AND primerapellido IN ('Blanco', 'Pérez', 'García');

