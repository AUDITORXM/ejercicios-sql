-- 1. Obtener el nombre de empresa de cada uno de los clientes junto al nombre de la provincia a la que pertenece.

SELECT EMPRESA, DESCRIPCION
FROM PROVINCIAS, CLIENTES
WHERE CLIENTES.PROVINCIA = PROVINCIAS.PROVINCIA

-- 2. Obtener los nombres de los proveedores junto con los art�culos que nos suministran.

SELECT PROVEEDORES.EMPRESA, ARTICULO
FROM ARTICULOS, PROVEEDORES
WHERE PROVEEDORES.PROVEEDOR = ARTICULOS.ARTICULO

-- 3. Obtener todos los proveedores junto con sus art�culos (si los tienen) seleccionando la descripci�n del art�culo y el beneficio correspondiente de su venta.

SELECT PROVEEDORES.PROVEEDOR, ARTICULO, DESCRIPCION, PR_VENT - PR_COST BENEFICIO
FROM PROVEEDORES, ARTICULOS
WHERE PROVEEDORES.PROVEEDOR = ARTICULOS.PROVEEDOR

SELECT PROVEEDOR, ARTICULO, DESCRIPCION, PR_VENT - PR_COST BENEFICIO
FROM ARTICULOS

-- 4. Obtener de los art�culos que han sido vendidos alguna vez (los que aparecen en los albaranes), su c�digo, nombre y el n�mero de existencias del art�culo en el almac�n actualmente.

SELECT ARTICULOS.ARTICULO, ARTICULOS.PROVEEDOR, DESCRIPCION, EXISTENCIAS
FROM ARTICULOS, LINEAS
WHERE LINEAS.ARTICULO = ARTICULOS.ARTICULO

-- 5. Obtener el nombre y apellidos de los clientes madrile�os y con forma de pago al �Contado�.

SELECT NOMBRE, APELLIDOS
FROM PROVINCIAS, CLIENTES, FORMPAGOS
WHERE UPPER(PROVINCIAS.DESCRIPCION) = 'MADRID' AND UPPER(FORMPAGOS.DESCRIPCION) =  'CONTADO' AND CLIENTES.PROVINCIA = PROVINCIAS.PROVINCIA AND CLIENTES.FORMPAGO = FORMPAGOS.FORMPAGO

-- 6. Obtener la descripci�n de las provincias que contengan clientes y proveedores.

SELECT DESCRIPCION
FROM PROVEEDORES, PROVINCIAS, CLIENTES
WHERE CLIENTES.PROVINCIA = PROVINCIAS.PROVINCIA AND PROVINCIAS.PROVINCIA = PROVEEDORES.PROVINCIA
GROUP BY DESCRIPCION

-- 7. Obtener la descripci�n de las provincias que contengan clientes o proveedores.

SELECT DESCRIPCION
FROM PROVEEDORES, PROVINCIAS, CLIENTES
WHERE CLIENTES.PROVINCIA = PROVINCIAS.PROVINCIA AND PROVINCIAS.PROVINCIA = PROVEEDORES.PROVINCIA
GROUP BY DESCRIPCION

-- 8. Obtener los art�culos cuyo precio de venta est� entre 50000 y 60000 Euros. y la provincia del proveedor que lo suministra sea BARCELONA.

SELECT ARTICULOS.ARTICULO, ARTICULOS.PROVEEDOR
FROM PROVEEDORES, ARTICULOS, PROVINCIAS
WHERE PR_VENT BETWEEN 50000 AND 60000
    AND PROVEEDORES.PROVINCIA = PROVINCIAS.PROVINCIA
    AND ARTICULOS.PROVEEDOR = PROVEEDORES.PROVEEDOR
-- 9. Obtener los albaranes que contengan alg�n art�culo que sea suministrado por alg�n proveedor vasco y a su vez que las existencias superen en el almac�n el stock m�nimo (bajo_m�nimo) en m�s de 10 unidades.

SELECT ALBARANES.ALBARAN, PROVINCIAS.DESCRIPCION
FROM ALBARANES, LINEAS, ARTICULOS, PROVEEDORES, PROVINCIAS
WHERE PROVINCIAS.DESCRIPCION IN('ALAVA', 'VIZCAYA', 'GUIPUZCOA')
    AND LINEAS.ARTICULO = ARTICULOS.ARTICULO
    AND LINEAS.PROVEEDOR = ARTICULOS.PROVEEDOR
    AND ARTICULOS.PROVEEDOR = PROVEEDORES.PROVEEDOR
    AND PROVEEDORES.PROVINCIA = PROVEEDORES.PROVINCIA
    AND ALBARANES.ALBARAN = LINEAS.ALBARAN

-- 10. Seleccionar los albaranes cuya fecha de pago se encuentre en la 1� quincena de marzo de 1988 y la fecha de albar�n sea de la 2� quincena de febrero del mismo a�o.


11. Seleccionar los proveedores cuyas provincias est�n en el rango 15 a 30 y cumpla a su vez que su c�digo est� entre 20 y 40.


12. Seleccionar los proveedores vascos y madrile�os.


13. Obtener los albaranes cuyas fechas de pago est�n dentro de los meses impares de los a�os 1988 y 1990.


14. Obtener los clientes cuyas formas de pago sean al �Contado�, �30� d�as o �30/60� d�as.


15. Seleccionar las provincias que comiencen con la letra �Z� y su cuarta letra sea la �A�.


16. Buscar las empresas proveedoras que sean sociedades an�nimas o sociedades limitadas.

17. Seleccionar las provincias que comiencen por la letra �B�,�M�, o �V� y contengan la vocal �A�.


18. Seleccionar los clientes, cuya empresa contenga la cadena de caracteres �TALLER� en su descripci�n y pertenezca a alguna provincia que contenga la letra �C�.


19. Seleccionar los proveedores cuyo prefijo de provincia comience por 94 y no tengan 2� direcci�n.


20. Contar los albaranes que de los clientes cuyo distrito sea nulo y su nombre de empresa contenga la letra �M� y la vocal �A�.
