SELECT * FROM Paciente

--Sentencia sirve para insertar
INSERT INTO Paciente(dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
VALUES
('1101916193','Angel','Diaz','1984-04-15','El Valle','MEX','0963251234','correo@correo.com','Ninguna'),
('1103030303','Maria','Gonzalez','1975-03-16','El Valle','COL','0900331145','correo@correo.com','Ninguna')

SELECT * FROM Pais
--Sentencia para insertado
INSERT INTO Pais(idPais,Pais)
VALUES
('AFG', 'Afganistán'),
('EC', 'Ecuador')

--RETORNA LOS 2 PRIMEROS ELEMENTOS
SELECT TOP 1* FROM Paciente

--UTILIZANDO EL ORDER BY -> Sirve para ordenar
SELECT * FROM Paciente ORDER BY fNacimiento DESC

--UTILIZANDO EL ORDERBY CON TOP
SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento DESC

--UTILIZANDO DISTINCT QUITA LOS ELEMENTOS DUPLICADOS
SELECT DISTINCT idPais FROM Paciente

--Permite agrupar los paises
SELECT idPais FROM Paciente GROUP BY idPais

--Permite filtrar los elementos
SELECT * FROM Paciente WHERE fNacimiento = '19920617'