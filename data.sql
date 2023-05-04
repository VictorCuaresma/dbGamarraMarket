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
('DNI', '45781233', 'Alicia', 'Garcia Campos',
'', '', STR_TO_DATE('20/03/1980', '%d/%m/%Y'));

SELECT * FROM cliente;

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('CNE', '315487922', 'Juana', 'Avila Chumpitaz',
'juana.avila@gmail.com', '923568741', STR_TO_DATE('06/06/1986', '%d/%m/%Y'));

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('CNE', '122116633', 'Ana', 'Enriquez Flores',
'ana.enriquez@empresa.com', '', STR_TO_DATE('10/02/1970', '%d/%m/%Y'));

INSERT INTO cliente
(tipo_documento,
numero_documento,
nombres,
apellidos,
email,
celular,
fecha_nacimiento)
VALUES
('CNE', '088741589', 'Claudia', 'Perales Ortiz',
'claudia.perales@yahoo.com', '997845263', STR_TO_DATE('25/07/1981', '%d/%m/%Y'));

SELECT * FROM cliente;

