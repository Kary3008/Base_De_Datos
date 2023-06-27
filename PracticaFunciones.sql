--PRACTICA FUNCIONES
CREATE OR REPLACE FUNCTION buscar_clientes_edad_delegacion(edad_input integer, delegacion_input varchar)
RETURNS TABLE (id_cliente integer, nombre varchar, fecha_nac date, direccion_delegacion varchar) AS
$$
BEGIN
    RETURN QUERY SELECT id_cliente, nombre, fecha_nac, direccion_delegacion
    FROM cliente
    WHERE direccion_delegacion ILIKE delegacion_input AND EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nac)) = edad_input;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION calcular_bono_antiguedad(fecha_alta date) 
   RETURNS integer AS 
   $$
   DECLARE 
       antiguedad integer;
       bono integer;
   BEGIN
       antiguedad := extract(year from age(current_date, alta));
       IF antiguedad BETWEEN 0.5 AND 3 THEN 
           bono := 1000;
       ELSEIF antiguedad BETWEEN 3 AND 5 THEN 
           bono := 2000;
       ELSE 
           bono := 5000;
       END IF;
       RETURN bono;
   END;
   $$ 
   LANGUAGE plpgsql;
