USE tienda;

SELECT id_empleado, nombre FROM empleado WHERE id_puesto=4;
SELECT id_puesto, nombre FROM puesto WHERE salario>10000;
SELECT id_articulo, nombre FROM articulo WHERE precio>1000 AND iva>100;
SELECT id_venta FROM venta WHERE id_articulo IN (135, 963) AND id_empleado IN (835, 369)