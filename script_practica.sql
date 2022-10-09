/*Listar los nombres de los usuarios*/
SELECT NOMBRE FROM USUARIOS

/*Calcular el saldo máximo de los usuarios de sexo “Mujer"*/
SELECT MAX(SALDO) FROM USUARIOS WHERE SEXO='M'

/*Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SON*/
SELECT NOMBRE, TELEFONO FROM USUARIOS WHERE MARCA IN('NOKIA', 'BLACKBERRY', 'SONY');

/*Contar los usuarios sin saldo o inactivos*/
SELECT COUNT(*) FROM USUARIOS WHERE SALDO<=0 OR ACTIVO=0

/*Listar el login de los usuarios con nivel 1, 2 o 3*/
SELECT USUARIO FROM USUARIOS WHERE NIVEL IN (1,2,3)

/*Listar los números de teléfono con saldo menor o igual a 300*/
SELECT NOMBRE,TELEFONO FROM USUARIOS WHERE SALDO<=300

/*Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL*/
SELECT SUM(SALDO) FROM USUARIOS WHERE COMPANIA='NEXTEL'

/*Contar el número de usuarios por compañía telefónica*/
SELECT COMPANIA, COUNT(USUARIO) AS CANT_X_COMPA FROM USUARIOS GROUP BY 1

/*Contar el número de usuarios por nivel*/
SELECT NIVEL, COUNT(*) AS CAN FROM USUARIOS GROUP BY 1

/*Listar el login de los usuarios con nivel 2*/
SELECT USUARIO FROM USUARIOS WHERE NIVEL=2

/*Mostrar el email de los usuarios que usan gmail*/
SELECT USUARIO, EMAIL FROM USUARIOS WHERE EMAIL LIKE '%GMAIL%'

/*Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA*/
SELECT NOMBRE, TELEFONO FROM USUARIOS WHERE MARCA IN ('LG', 'SAMSUNG','MOTOROLA')

/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG*/
SELECT NOMBRE, TELEFONO FROM USUARIOS WHERE MARCA NOT IN ('LG', 'SAMSUNG')

/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL*/
SELECT USUARIO, TELEFONO FROM USUARIOS WHERE COMPANIA='IUSACELL'

/*Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL*/
SELECT USUARIO, TELEFONO FROM USUARIOS WHERE COMPANIA<>'TELCEL'

/*Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA*/
SELECT AVG(SALDO) FROM USUARIOS WHERE MARCA='NOKIA'

/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL*/
SELECT USUARIO, TELEFONO FROM USUARIOS WHERE COMPANIA IN ('IUSACELL','AXEL')

/*Mostrar el email de los usuarios que no usan yahoo*/
SELECT NOMBRE,EMAIL FROM USUARIOS WHERE EMAIL NOT LIKE '%TAHOO%'

/*Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL*/
SELECT USUARIO, TELEFONO, COMPANIA FROM USUARIOS WHERE COMPANIA NOT IN ('TELCEL','IUSACELL')

/*Listar el login y teléfono de los usuarios con compañía telefónica UNEFON*/
SELECT USUARIO, TELEFONO, COMPANIA FROM USUARIOS WHERE COMPANIA='UNEFON'

/*Listar las diferentes marcas de celular en orden alfabético descendentemente*/
SELECT DISTINCT MARCA FROM USUARIOS ORDER BY MARCA DESC

/*Listar las diferentes compañías en orden alfabético aleatorio*/
SELECT DISTINCT COMPANIA FROM USUARIOS ORDER BY RAND()

/*Listar el login de los usuarios con nivel 0 o 2*/
SELECT NOMBRE, USUARIO, NIVEL FROM USUARIOS WHERE NIVEL IN (0,2)

/*Calcular el saldo promedio de los usuarios que tienen teléfono marca LG*/
SELECT AVG(SALDO) FROM USUARIOS WHERE MARCA='LG'

/*Listar el login de los usuarios con nivel 1 o 3*/
SELECT USUARIO, NIVEL FROM USUARIOS WHERE NIVEL IN (1,3)

/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY*/
SELECT NOMBRE, TELEFONO, MARCA FROM USUARIOS WHERE MARCA<>'BLACKBERRY'

/*Listar el login de los usuarios con nivel 3*/
SELECT USUARIO, NIVEL FROM USUARIOS WHERE NIVEL=3

/*Listar el login de los usuarios con nivel 0*/
SELECT USUARIO, NIVEL FROM USUARIOS WHERE NIVEL=0

/*Listar el login de los usuarios con nivel 1*/
SELECT USUARIO, NIVEL FROM USUARIOS WHERE NIVEL=1

/*Contar el número de usuarios por sexo*/
SELECT SEXO, COUNT(SEXO) FROM USUARIOS GROUP BY SEXO

/*Listar el login y teléfono de los usuarios con compañía telefónica AT&T*/
SELECT USUARIO, TELEFONO, COMPANIA FROM USUARIOS WHERE COMPANIA='AT&T'

/*Listar las diferentes compañías en orden alfabético descendentemente*/
SELECT DISTINCT COMPANIA FROM USUARIOS ORDER BY COMPANIA DESC

/*Listar el login de los usuarios inactivos*/
SELECT USUARIO, ACTIVO FROM USUARIOS WHERE ACTIVO=0

/*Listar los números de teléfono sin saldo*/
SELECT TELEFONO, SALDO FROM USUARIOS WHERE SALDO<=0

/*Calcular el saldo mínimo de los usuarios de sexo “Hombre*/
SELECT MIN(SALDO) FROM USUARIOS WHERE SEXO='H'

/*Listar los números de teléfono con saldo mayor a 300*/
SELECT TELEFONO, SALDO FROM USUARIOS WHERE SALDO>300

/*Contar el número de usuarios por marca de teléfono*/
SELECT MARCA, COUNT(*) AS CANT FROM USUARIOS GROUP BY MARCA

/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG*/
SELECT NOMBRE, TELEFONO, MARCA FROM USUARIOS WHERE MARCA<>'LG'

/*Listar las diferentes compañías en orden alfabético ascendentemente*/
SELECT DISTINCT COMPANIA FROM USUARIOS ORDER BY 1 ASC

/*Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON*/
SELECT SUM(SALDO) AS SUMA_SALDO FROM USUARIOS WHERE COMPANIA='UNEFON'

/*Mostrar el email de los usuarios que usan hotmail*/
SELECT EMAIL, NOMBRE FROM USUARIOS WHERE EMAIL LIKE '%HOTMAIL%'

/*Listar los nombres de los usuarios sin saldo o inactivos*/
SELECT NOMBRE, SALDO, ACTIVO FROM USUARIOS WHERE SALDO<=0 OR ACTIVO=0

/*istar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL*/
SELECT USUARIO, TELEFONO, COMPANIA FROM USUARIOS WHERE COMPANIA IN('IUSACELL','TELCEL')

/*Listar las diferentes marcas de celular en orden alfabético ascendentemente*/
SELECT DISTINCT MARCA FROM USUARIOS ORDER BY 1 ASC

/*Listar las diferentes marcas de celular en orden alfabético aleatorio*/
SELECT DISTINCT MARCA FROM USUARIOS ORDER BY RAND()

/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON*/
SELECT USUARIO, TELEFONO, COMPANIA FROM USUARIOS WHERE COMPANIA IN ('IUSACELL','UNEFON')

/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA*/
SELECT NOMBRE, TELEFONO, MARCA FROM USUARIOS WHERE MARCA NOT IN ('MOTOROLA','NOKIA')

/*Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL*/
SELECT SUM(SALDO) AS SUM_SALDO FROM USUARIOS WHERE COMPANIA='TELCEL'