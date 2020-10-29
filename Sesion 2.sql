USE tienda;
SHOW TABLES;

SELECT nombre FROM articulo WHERE nombre LIKE "%Pasta%";
SELECT nombre FROM articulo WHERE nombre LIKE "%Cannelloni%";
SELECT nombre FROM articulo WHERE nombre LIKE "% - %";
SELECT nombre FROM puesto WHERE nombre LIKE "%Designer%";
SELECT nombre FROM puesto WHERE nombre LIKE "%Developer%";

