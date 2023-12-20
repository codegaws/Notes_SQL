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

    