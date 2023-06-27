--PRACTICA VISTA
CREATE VIEW resumen_proveedores AS
SELECT prov.nombre, COUNT(prod.id_producto) AS cantidad_productos, AVG((prod.preciosugeridoventa/prod.preciocompra)-1) AS ganancia_promedio
FROM proveedor prov 
LEFT JOIN producto prod ON prod.id_proveedor = prov.id_proveedor
GROUP BY prov.nombre;

CREATE VIEW clientes_info AS
SELECT cli.nombre, cli.primerapellido, cli.segundoapellido, cli.correoelectronico, cli.direccion_delegacion, FLOOR(DATE_PART('year', NOW())- DATE_PART('year', cli.fecha_nac)) AS edad
FROM cliente cli;

CREATE VIEW format_facturas AS
SELECT cli.nombre || ' ' || cli.primerapellido  || ' ' || cli.segundoapellido AS nombre_completo, cli.direccion_delegacion, venta.fecha, prod.nombre, producto_vendido.cantidad, producto_vendido.precioventa
FROM cliente cli
JOIN venta venta ON venta.id_cliente = cli.id_cliente
JOIN producto_vendido producto_vendido ON producto_vendido.id_venta = venta.id_venta
JOIN producto prod ON prod.id_producto = producto_vendido.id_producto;


CREATE VIEW resumen_deuda AS
SELECT cli.direccion_delegacion, SUM(cli.deuda) AS deuda_total
FROM cliente cli
GROUP BY cli.direccion_delegacion;
CREATE VIEW contribucion_cliente AS
SELECT cli.nombre, cli.primerapellido, cli.segundoapellido, cli.direccion_delegacion, cli.deuda, (cli.deuda / cli.deuda/6) 
	AS contribucion_porcentual
FROM cliente cli;



