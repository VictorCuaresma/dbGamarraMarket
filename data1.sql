/* Crear base de datos dbGamarraMarket */
DROP DATABASE IF EXISTS dbGamarraMarket;
CREATE DATABASE dbGamarraMarket
DEFAULT CHARACTER SET utf8;

/* Poner en uso la base de datos dbGamarraMarket */
USE dbGamarraMarket;

/* Crear la tabla CLIENTE */
CREATE TABLE CLIENTE
(
    id int auto_increment,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar(90),
    email varchar(80),
    celular char(9),
    fecha_nacimiento date,
    activo bool default '1',
    CONSTRAINT cliente_pk PRIMARY KEY (id)
);

/* Crear la tabla VENDEDOR */
CREATE TABLE VENDEDOR
(
    id int auto_increment,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar(90),
    salario decimal(8,2),
    celular char(9),
    email varchar(80),
    activo bool default '1',
    CONSTRAINT vendedor_pk PRIMARY KEY (id)
);

/* Crear la tabla PRENDA */
CREATE TABLE PRENDA
(
	id int auto_increment,
    descripcion varchar(90),
    marca varchar(50),
    cantidad int,
    talla varchar(10),
    precio decimal(8,2),
    activo bool default '1',
    CONSTRAINT prenda_pk PRIMARY KEY (id)
);

/* Crear la tabla VENTA */
CREATE TABLE VENTA
(
	id int auto_increment,
    fecha_hora timestamp default current_timestamp,
    cliente_id int,
    vendedor_id int,
    activo bool default '1',
    CONSTRAINT venta_pk PRIMARY KEY (id)
);

/* Crear la tabla VENTA_DETALLE */
CREATE TABLE VENTA_DETALLE
(
	id int auto_increment,
    venta_id int,
    prenda_id int,
    cantidad int,
    CONSTRAINT venta_detalle_pk PRIMARY KEY (id)
);

/* Relacionar tabla VENTA con CLIENTE */
ALTER TABLE venta
	ADD CONSTRAINT VENTA_CLIENTE FOREIGN KEY (cliente_id)
    REFERENCES cliente (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Relacionar tabla VENTA con VENDEDOR */
ALTER TABLE venta
	ADD CONSTRAINT VENTA_VENDEDOR FOREIGN KEY (vendedor_id)
    REFERENCES vendedor (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Relacionar tabla VENTA_DETALLE con VENTA */
ALTER TABLE venta_detalle
	ADD CONSTRAINT VENTA_DETALLE_VENTA FOREIGN KEY (venta_id)
    REFERENCES venta (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Relacionar tabla VENTA_DETALLE con PRENDA */
ALTER TABLE venta_detalle
	ADD CONSTRAINT VENTA_DETALLE_PRENDA FOREIGN KEY (prenda_id)
    REFERENCES prenda (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Ver base de datos activa */
SELECT database();

/* Listar tablas de la base de datos */
SHOW TABLES;

/* Listar relaciones de tablas de la base de datos activa */
SELECT 
    i.constraint_name, k.table_name, k.column_name, 
    k.referenced_table_name, k.referenced_column_name
FROM 
    information_schema.TABLE_CONSTRAINTS i 
LEFT JOIN information_schema.KEY_COLUMN_USAGE k 
ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME 
WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND i.TABLE_SCHEMA = DATABASE();

