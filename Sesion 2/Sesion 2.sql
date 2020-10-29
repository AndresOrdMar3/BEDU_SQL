USE tienda;
SHOW TABLES;

#Reto 1
SELECT nombre FROM articulo WHERE nombre LIKE "%Pasta%";
SELECT nombre FROM articulo WHERE nombre LIKE "%Cannelloni%";
SELECT nombre FROM articulo WHERE nombre LIKE "% - %";
SELECT nombre FROM puesto WHERE nombre LIKE "%Designer%";
SELECT nombre FROM puesto WHERE nombre LIKE "%Developer%";

#Reto 2
SELECT nombre, AVG(salario) AS Promedio FROM puesto GROUP BY nombre;
SELECT COUNT(nombre) AS numero FROM articulo WHERE nombre LIKE "%Pasta%";
SELECT MIN(salario) AS minimo, MAX(salario) AS maximo FROM puesto;
SELECT SUM(salario) AS Suma FROM puesto ORDER BY id_puesto DESC LIMIT 5;

#Reto3
SELECT nombre, COUNT(nombre) AS Numero_de_Registros FROM puesto GROUP BY nombre;
SELECT nombre, SUM(salario) AS Gasto_por_Puesto FROM puesto GROUP BY nombre;
SELECT id_empleado, SUM(id_venta) AS Numero_de_Ventas_Empleado FROM venta GROUP BY id_empleado;
SELECT id_articulo, SUM(id_venta) AS Numero_de_Ventas_Articulo FROM venta GROUP BY id_articulo;

