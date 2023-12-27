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

