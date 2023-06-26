--PRACTICA SELECT OPERADORES LÓGICOS
SELECT * FROM cliente WHERE NOT (nombre = 'Eduardo' OR nombre = 'Juan'); 
SELECT * FROM cliente WHERE credito BETWEEN 5000 AND 10000; 
SELECT * FROM cliente WHERE nombre = 'Eduardo' AND primerapellido = 'Martínez';
SELECT * FROM cliente WHERE (NOT nombre = 'Juan') AND primerapellido = 'Alvarado';
SELECT * FROM cliente WHERE nombre = 'Blanca' OR primerapellido = 'Rodríguez';
SELECT * FROM cliente WHERE primerapellido = 'Paz' OR segundoapellido = 'Paz';
SELECT * FROM cliente WHERE primerapellido='Ambriz' OR primerapellido= 'Pérez' OR primerapellido =  'García';
SELECT * FROM cliente WHERE nombre= 'Abril' AND (primerapellido =  'Govea' OR primerapellido = 'Pérez');
SELECT * FROM cliente WHERE direccion_delegacion = 'Iztacalco' OR direccion_delegacion = 'GAM' OR direccion_delegacion = 'Benito Juárez';
SELECT * FROM cliente WHERE (direccion_delegacion = 'Iztacalco' OR direccion_delegacion = 'Coyoacán') AND deuda BETWEEN 10000 AND 20000;

