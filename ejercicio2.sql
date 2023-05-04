/* Poner en uso la base de datos dbGamarraMarket */
USE dbGamarraMarket;
/* Insertar 1 registro en la tabla CLIENTE */
INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('DNI', '77889955', 'Alberto', 'Solano Pariona',
'alberto.pariona@gmail.com', '998456323', STR_TO_DATE('10/02/1970', '%d/%m/%Y'));

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('DNI', '41552789', 'Juan', 'Saens Garzilaso',
'juan.saens@noiting.com', '900700250', STR_TO_DATE('15/12/1990', '%d/%m/%Y'));

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('DNI', '70454589', 'Alexandra', 'Hernandez Sanchez',
'juana.arenas@noiting.com', '920748963', STR_TO_DATE('14/05/2000', '%d/%m/%Y'));

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('CNE', '41465000', 'Cinthia', 'Salhuana Garcia',
'cinthia.salhuana@gmail.com', '920523579', STR_TO_DATE('08/09/1982', '%d/%m/%Y'));

/* Listar registros de tabla CLIENTE*/
SELECT * FROM cliente;
SELECT * FROM cliente;

/* Cambiar los apellidos de Cinthia Salhuana Garcia por Mendez Vera asi como su email cinthia.mendez@noiting.com*/
UPDATE cliente
    SET apellidos = 'Mendez Vera',
    email = 'Cinthia.mendez@noiting.com'
    WHERE nombres = 'Cinthia' AND apellidos = 'Salhuana Garcia';

/* Listar Registros de la Tabla cliente*/
SELECT * FROM cliente;


