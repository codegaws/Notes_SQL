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

