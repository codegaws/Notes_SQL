// notas Scrip SQL
CREATE DATABASE ADMINISTRACION;
	drop database administracion;
    create database administracion;
    show databases;
    show tables;
    create table usuarios(
		nombre varchar(30),
        clase varchar(10)
    )
    describe usuarios;
    drop table usuarios;
    insert into usuarios(nombre,clase) values('Mario Perez','Marito');
	select nombre,clase from usuarios;


    //EJERCICIO

    drop table if exists agenda;
    create table agenda(
	nombre varchar(20),
    domicilio varchar (30),
    telefono varchar (11)
);
describe agenda;

show tables;


insert into agenda(nombre,domicilio,telefono) values
('Albert Mores','Colon 123','42424242');
insert into agenda(nombre,domicilio,telefono) values
('Alberta Mores','Colon 123','8484885');

select * from agenda;
select nombre,domicilio from agenda

****************** CLASE 5 ==>Curso de MySQL: Tipos de datos básicos de un campo de una tabla

CREATE TABLE LIBROS(
	titulo varchar(40),
	autor varchar(20),
	editorial varchar(10),
	precio float,
	cantidad integer
);

INSERT INTO LIBROS(titulo,autor,editorial,precio,cantidad)
VALUES('El alegre','Borges','Bruño','200.50','50');
INSERT INTO LIBROS(titulo,autor,editorial,precio,cantidad)
VALUES('Caneloni','Sofia','Bruño','300.50','50');
INSERT INTO LIBROS(titulo,autor,editorial,precio,cantidad)
VALUES('Java','James Gosling','Bruño','1000.50','50');

select * from LIBROS;

//EJEMPLO 2

DROP TABLE IF EXISTS EMPLEADOS;

create table empleados(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);

describe empleados;

INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda','11111111','M','Enrique Palacios 1050','50000');
INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda1','22222222','M','Enrique Palacios 1050','50000');
INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda2','33333333','M','Enrique Palacios 1050','50000');
INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda3','44444444','M','Enrique Palacios 1050','50000');
INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda4','55555555','M','Enrique Palacios 1050','50000');
INSERT INTO empleados(nombre,documento,sexo,domicilio,sueldobasico)
VALUES('Jhon Fonda5','66666666','M','Enrique Palacios 1050','50000');

select * from empleados;

/************************6-Recuperación de algunos campos***************************
select * from libros;
El comando "select" recupera los registros de una tabla. Con el asterisco (*) indicamos que seleccione todos los campos de la tabla que nombramos.

Podemos especificar el nombre de los campos que queremos ver separándolos por comas:

 select titulo,autor,editorial from libros; 
En la sentencia anterior la consulta mostrará sólo los campos "titulo", "autor" y "editorial". En la siguiente sentencia, veremos los campos correspondientes al título y precio de todos los libros:

 select titulo,precio from libros;
Para ver solamente la editorial y la cantidad de libros tipeamos:

 select editorial,cantidad from libros;*/
 
 DROP TABLE IF EXISTS peliculas;

create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

describe peliculas;

insert into peliculas (titulo,actor,duracion,cantidad) values ('Mision imposible','Tom cruise',120,3);
insert into peliculas (titulo,actor,duracion,cantidad) values ('La Bella y la Bestia','Josefina Towson',240,50);
insert into peliculas (titulo,actor,duracion,cantidad) values ('Titanic','Leonardo Di Caprio',180,5);
insert into peliculas (titulo,actor,duracion,cantidad) values ('Pasion y Prejuicio','Jhon Hakwman',245,10);

select titulo,actor from peliculas;
select titulo,duracion from peliculas;
select titulo,cantidad from peliculas;
select * from peliculas;

/*****    7.-Recuperación de registros específicos (select - where)***********************
Existe una cláusula, "where" que es opcional, con ella podemos especificar condiciones para la consulta "select". Es decir, podemos recuperar algunos registros, sólo los que cumplan con ciertas condiciones indicadas con la cláusula "where". Por ejemplo, queremos ver el usuario cuyo nombre es "MarioPerez", para ello utilizamos "where" y luego de ella, la condición:

select nombre, clave from usuarios where nombre='MarioPerez';
Para las condiciones se utilizan operadores relacionales (tema que trataremos más adelante en detalle). El signo igual(=) es un operador relacional. Para la siguiente selección de registros especificamos una condición que solicita los usuarios cuya clave es igual a 'bocajunior':

select nombre, clave from usuarios where clave='bocajunior';
Si ningún registro cumple la condición establecida con el "where", no aparecerá ningún registro.

*/

DROP TABLE IF EXISTS usuarios;

create table usuarios(
nombre varchar(30),
clave varchar(10)
);

describe usuarios;

insert into usuarios (nombre,clave) values('Leonardo','payaso');
insert into usuarios (nombre,clave) values ('Ortega','123');
insert into usuarios (nombre,clave) values ('Marcelo','bocajunior');
insert into usuarios (nombre,clave) values ('Gustavo','123');

select nombre,clave from usuarios;

select nombre, clave from usuarios where nombre = 'Gustavo';
select nombre, clave from usuarios where clave = 'bocajunior';
select nombre, clave from usuarios where clave = '123';

/*EJEMPLO */

drop table if exists articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float

);

describe articulos;

insert into articulos (codigo,nombre,descripcion,precio) values('1','impresora','Epson Stylus C45','430.25');
insert into articulos (codigo,nombre,descripcion,precio) values('2','impresora','Epson Stylus C35','330.25');
insert into articulos (codigo,nombre,descripcion,precio) values('3','monitor','LG','800');
insert into articulos (codigo,nombre,descripcion,precio) values('4','teclado','español bisuwl','90.50');
insert into articulos (codigo,nombre,descripcion,precio) values('5','teclado','ingles Disual','92.50');

select * from articulos;
select * from articulos where nombre = 'impresora';
select codigo, descripcion,precio from articulos where nombre = 'teclado';/*=> NO SE USA EL "*" ASTERISCO */

/*======= 8.- Operadores Relacionales========>

Hemos aprendido a especificar condiciones de igualdad para seleccionar registros de una tabla; por ejemplo:

select titulo,autor,editorial from libros where autor='Borges';
Utilizamos el operador relacional de igualdad.

Los operadores relacionales vinculan un campo con un valor para que MySQL compare cada registro (el campo especificado) con el valor dado.

Los operadores relacionales son los siguientes:

=	igual
<>	distinto
>	mayor
<	menor
>=	mayor o igual
<=	menor o igual
Podemos seleccionar los registros cuyo autor sea diferente de 'Borges', para ello usamos la condición:

select titulo,autor,editorial from libros where autor<>'Borges';
Podemos comparar valores numéricos. Por ejemplo, queremos mostrar los libros cuyos precios sean mayores a 20 pesos:

select titulo,autor,editorial,precio from libros where precio>20;
También, los libros cuyo precio sea menor o igual a 30:

select titulo,autor,editorial,precio from libros where precio<=30;*/

/*EJERCICIO FUENTE EN EL TRABAJO*******************************/

drop table if exists libros;

create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15),
  precio float
);

insert into libros (titulo,autor,editorial,precio) values ('El aleph','Borges','Planeta',12.50);
insert into libros (titulo,autor,editorial,precio) values ('Martin Fierro','Jose Hernandez','Emece',16.00);
insert into libros (titulo,autor,editorial,precio) values ('Aprenda PHP','Mario Molina','Emece',35.40);
insert into libros (titulo,autor,editorial,precio) values ('Cervantes','Borges','Paidos',50.90);

select titulo,autor,precio from libros;
select titulo,autor,editorial,precio from libros where titulo ='Cervantes';
select titulo,autor,editorial,precio from libros where autor <> 'Borges';
select titulo,autor,editorial,precio from libros where precio >20;
select titulo,autor,editorial,precio from libros where precio <=40;

/*EJEMPLO 2 PELICULAS*/
drop table if exists peliculas;

create table peliculas(
	titulo varchar(20),
	actor varchar(20),
	duracion integer,
	cantidad integer
);



insert into peliculas (titulo,actor,duracion,cantidad) 
values ('Mision imposible','Tom cruise',120,3);
insert into peliculas (titulo,actor,duracion,cantidad) 
values ('La Bella y la Bestia','Josefina Towson',180,2);
insert into peliculas (titulo,actor,duracion,cantidad) 
values ('Titanic','Leonardo Di Caprio',90,3);
insert into peliculas (titulo,actor,duracion,cantidad) 
values ('Pasion y Prejuicio','Jhon Hakwman',90,2);

select * from peliculas;
select titulo,actor,duracion,cantidad from peliculas where duracion <= 90;
select titulo,actor,duracion,cantidad from peliculas where actor <> 'Tom cruise';
select titulo,actor,duracion,cantidad from peliculas where cantidad > 2

/*****    9.-Borrado de registros de una tabla (delete)**/
/*ara eliminar los registros de una tabla usamos el comando "delete":

delete from usuarios;
La ejecución del comando indicado en la línea anterior borra TODOS los registros de la tabla.

Si queremos eliminar uno o varios registros debemos indicar cuál o cuáles, para ello utilizamos el comando "delete" 
junto con la clausula "where" con la cual establecemos la condición que deben cumplir los registros a borrar. 
Por ejemplo, queremos eliminar aquel registro cuyo nombre de usuario es 'Leonardo':

delete from usuarios where nombre='Leonardo';
Si solicitamos el borrado de un registro que no existe, es decir, ningún registro cumple con la
 condición especificada, no se borrarán registros, pues no encontró registros con ese dato.

El comando delete hay que tener mucho cuidado en su uso, una vez eliminado un registro no hay forma de recuperarlo. 
Si por ejemplo ejecutamos el comando:

delete from usuarios;
Si la tabla tiene 1000000 de filas, todas ellas serán eliminadas.

En MySQL hay una variable de configuración llamada SQL_SAFE_UPDATES que puede almacenar los valores 1 (activa) y 0 (desactiva). 
Cuando tiene el valor 1 no permite ejecutar comandos delete sin indicar un where y que dicho where se relacione 
a una clave primaria, tema que veremos más adelante.*/

drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Leonardo','payaso');
insert into usuarios (nombre, clave) values ('MarioPerez','Marito');
insert into usuarios (nombre, clave) values ('Marcelo','River');
insert into usuarios (nombre, clave) values ('Gustavo','River');

/*delete*/
drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Leonardo','payaso');
insert into usuarios (nombre, clave) values ('MarioPerez','Marito');
insert into usuarios (nombre, clave) values ('Marcelo','River');
insert into usuarios (nombre, clave) values ('Gustavo','River');

set SQL_SAFE_UPDATES=0;

delete from usuarios;

delete from usuarios where nombre='Leonardo';

select nombre,clave from usuarios;

delete from usuarios where clave='River';

select nombre,clave from usuarios;

set SQL_SAFE_UPDATES=1;

select @@sql_safe_updates;

/*****    10.-Modificación de registros de una tabla (update)
Para modificar uno o varios datos de uno o varios registros utilizamos "update" (actualizar).

Por ejemplo, en nuestra tabla "usuarios", queremos cambiar los valores de todas las claves, por "RealMadrid":

 update usuarios set clave='RealMadrid';
Utilizamos "update" junto al nombre de la tabla y "set" junto con el campo a modificar y su nuevo valor.

El cambio afectará a todos los registros.

Podemos modificar algunos registros, para ello debemos establecer condiciones de selección con "where".

Por ejemplo, queremos cambiar el valor correspondiente a la clave de nuestro usuario llamado 'MarioPerez', 
queremos como nueva clave 'Boca', necesitamos una condición "where" que afecte solamente a este registro:

 update usuarios set clave='Boca'
  where nombre='MarioPerez';
Si no encuentra registros que cumplan con la condición del "where", ningún registro es afectado.

Las condiciones no son obligatorias, pero si omitimos la cláusula "where", la actualización afectará a todos los registros.

También se puede actualizar varios campos en una sola instrucción:

 update usuarios set nombre='MarceloDuarte', clave='Marce'
  where nombre='Marcelo';
Para ello colocamos "update", el nombre de la tabla, "set" junto al nombre del campo y 
el nuevo valor y separado por coma, el otro nombre del campo con su nuevo valor. */

drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Leonardo','payaso');
insert into usuarios (nombre, clave) values ('MarioPerez','Marito'); 
insert into usuarios (nombre, clave) values ('Marcelo','River');
insert into usuarios (nombre, clave) values ('Gustavo','River');

select * from usuarios;

/*todas claves tienen la misma contraseña*/
update usuarios set clave='RealMadrid';
/*cambiar solo el nombre 'GustavoGarcia'*/
update usuarios set nombre='GustavoGarcia' where nombre = 'Leonardo';
/*cambiar solo el nombre , clave */
update usuarios set nombre='MarceloDuarte', clave='Marce' where nombre ='Marcelo' ;

/*EJEMPLO CON ARTICULOS UPDATE*/

drop table if exists articulos;

create table articulos(
	codigo integer,
    nombre varchar(20),
    descripcion varchar(30),
    precio float,
    cantidad integer


);

describe articulos;

insert into articulos (codigo,nombre,descripcion,precio,cantidad) values('1','impresora','Epson Stylus C45','400',20);
insert into articulos (codigo,nombre,descripcion,precio,cantidad) values('2','impresora','Epson Stylus C35','500',30);
insert into articulos (codigo,nombre,descripcion,precio,cantidad) values('3','monitor','LG','800',10);
insert into articulos (codigo,nombre,descripcion,precio,cantidad) values('4','teclado','español bisuwl','100',50);
insert into articulos (codigo,nombre,descripcion,precio,cantidad) values('5','teclado','ingles Disual','90',50);

select * from articulos;
/*cambiamos el precio segun la descripcion*/
update articulos set precio=400 where descripcion ='Epson Stylus C35';

update articulos set cantidad=50,precio=550 where codigo=2;


/* 11.- Clave primaria*/


/*Una clave primaria es un campo (o varios) que identifica 1 solo registro (fila) en una tabla.

Para un valor del campo clave existe solamente 1 registro. Los valores no se repiten ni pueden ser nulos.

Veamos un ejemplo, si tenemos una tabla con datos de personas, el número de documento puede establecerse como clave primaria, 
es un valor que no se repite; puede haber personas con igual apellido y nombre, incluso el mismo domicilio (padre e hijo por ejemplo), 
pero su documento será siempre distinto.

Si tenemos la tabla "usuarios", el nombre de cada usuario puede establecerse como clave primaria, es un valor que no se repite; 
puede haber usuarios con igual clave, pero su nombre de usuario será siempre distinto.

Establecemos que un campo sea clave primaria al momento de creación de la tabla:

 create table usuarios (
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
 );

 Para definir un campo como clave primaria agregamos "primary key" luego de la definición de todos los campos y 
entre paréntesis colocamos el nombre del campo que queremos como clave.

Si visualizamos la estructura de la tabla con "describe" vemos que el campo "nombre" es clave primaria y no acepta 
valores nulos(más adelante explicaremos esto detalladamente).*/

drop table if exists clientes;

create table clientes(
	documento varchar(8),
    apellido varchar(20),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar (11),
    primary key (documento)
);

describe clientes;

insert into clientes(documento,apellido,nombre,domicilio,telefono)
values('40343146','Chinchayan','George','av.Palacios 1068','922434628');

insert into clientes(documento,apellido,nombre,domicilio,telefono)
values('40343147','Fonseca','Grimaldo','Avellaneda 1354','4252652');

insert into clientes(documento,apellido,nombre,domicilio,telefono)
values('20454545','Lopez','Susana','Urquiza 344','4522525');

insert into clientes(documento,apellido,nombre,domicilio,telefono)
values('35454545','Lopez','Susana','Urquiza 344','4522525');

insert into clientes(documento,apellido,nombre,domicilio,telefono)
values('35454545','Rodriguez','Pablo','Colon 333','2323235');
select * from clientes;

/******************************************************Campo entero con autoincremento*/

/* Un campo de tipo entero puede tener otro atributo extra 'auto_increment'. Los valores de un campo 'auto_increment', 
se inician en 1 y se incrementan en 1 automáticamente.

Se utiliza generalmente en campos correspondientes a códigos de identificación para generar valores únicos para cada nuevo 
registro que se inserta.

Sólo puede haber un campo "auto_increment" y debe ser clave primaria (o estar indexado).

Para establecer que un campo autoincremente sus valores automáticamente, éste debe ser entero (integer) y debe ser clave primaria:

 create table libros(
  codigo int auto_increment,
  titulo varchar(50),
  autor varchar(50),
  editorial varchar(25),
  primary key (codigo)
 );
Para definir un campo autoincrementable colocamos "auto_increment" luego de la definición del campo al crear la tabla.

Hasta ahora, al ingresar registros, colocamos el nombre de todos los campos antes de los valores; 
es posible ingresar valores para algunos de los campos de la tabla, pero recuerde que al ingresar los valores debemos tener
 en cuenta los campos que detallamos y el orden en que lo hacemos.

Cuando un campo tiene el atributo "auto_increment" no es necesario ingresar valor para él, 
porque se inserta automáticamente tomando el último valor como referencia, o 1 si es el primero.

Para ingresar registros omitimos el campo definido como "auto_increment", por ejemplo:

 insert into libros (titulo,autor,editorial)
  values('El aleph','Borges','Planeta');
Este primer registro ingresado guardará el valor 1 en el campo correspondiente al código.

Si continuamos ingresando registros, el código (dato que no ingresamos) se cargará automáticamente 
siguiendo la secuencia de autoincremento.

Un campo "auto_increment" funciona correctamente sólo cuando contiene únicamente valores positivos. 
Más adelante explicaremos cómo definir un campo con sólo valores positivos.

Está permitido ingresar el valor correspondiente al campo "auto_increment", por ejemplo:

 insert into libros (codigo,titulo,autor,editorial)
  values(6,'Martin Fierro','Jose Hernandez','Paidos');
Pero debemos tener cuidado con la inserción de un dato en campos "auto_increment". Debemos tener en cuenta que:

- si el valor está repetido aparecerá un mensaje de error y el registro no se 
  ingresará.
- si el valor dado saltea la secuencia, lo toma igualmente y en las siguientes 
  inserciones, continuará la secuencia tomando el valor más alto.
- si el valor ingresado es 0, no lo toma y guarda el registro continuando la 
  secuencia.
- si el valor ingresado es negativo (y el campo no está definido para aceptar sólo 
  valores positivos), lo ingresa.
Para que este atributo funcione correctamente, el campo debe contener solamente valores positivos; 
más adelante trataremos este tema.*/

/*EJEMPLO*/
drop table if exists medicamentos;
create table medicamentos(
	codigo integer auto_increment,
    nombre varchar(20),
    laboratorio varchar(20),
    precio float,
    cantidad integer,
    primary key(codigo)
);

describe medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(12,'Paracetamol 500','Bago',1.90,200);
  insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Bayaspirina','Bayer',2.10,150); 
  select * from medicamentos;
  
  