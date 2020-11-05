USE tienda;
SHOW TABLES;

#Reto 1
SELECT empleado.nombre AS empleado FROM empleado JOIN puesto ON empleado.id_puesto=puesto.id_puesto WHERE puesto.salario<100000;

SELECT id_empleado, MIN(ventas_suma), MAX(ventas_suma)
FROM
 (SELECT clave, id_empleado, count(*) ventas_suma
      FROM venta
      GROUP BY clave, id_empleado) AS subconsulta
GROUP BY id_empleado;

SELECT clave, id_articulo FROM venta
 WHERE id_articulo IN (
 SELECT id_articulo FROM
 articulo WHERE precio > 5000);
 
 #Reto 2
 SELECT empleado.nombre AS nombre, venta.id_venta AS venta FROM empleado JOIN venta ON empleado.id_empleado=venta.id_empleado;
 SELECT articulo.nombre AS nombre FROM articulo JOIN venta ON articulo.id_articulo=venta.id_articulo GROUP BY venta.id_articulo;
 SELECT articulo.nombre AS nombre, COUNT(venta.id_articulo) AS total FROM articulo JOIN venta ON articulo.id_articulo=venta.id_articulo GROUP BY articulo.nombre;
 
 #Reto 3
 SELECT empleado.nombre AS empleado, puesto.nombre AS puesto FROM empleado JOIN puesto ON empleado.id_puesto=puesto.id_puesto;
 SELECT empleado.nombre AS empleado, venta.id_articulo AS articulo FROM empleado JOIN venta ON empleado.id_empleado=venta.id_empleado;
 
 SELECT puesto.nombre AS nombre_de_puesto, COUNT(puesto.nombre) AS total FROM empleado JOIN venta ON empleado.id_empleado=venta.id_empleado JOIN puesto ON empleado.id_puesto=puesto.id_puesto GROUP BY puesto.id_puesto ORDER BY total DESC LIMIT 1;
