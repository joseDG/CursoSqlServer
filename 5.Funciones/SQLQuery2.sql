
--Funcion Pago Minimo
SELECT * FROM Pago
SELECT MIN(monto) FROM Pago
SELECT MAX(monto) FROM Pago

--Funcion SUM
SELECT * FROM Pago
SELECT SUM(monto) + 20 as montoTotal FROM Pago

--Funcion AVG Permite hacer un promedio
SELECT * FROM Pago
SELECT AVG(monto) + 20 AS montoPromedio FROM Pago

--Funcion COUNT
SELECT COUNT(idPaciente) FROM Paciente WHERE apellido = 'Diaz'

--Funcion Having
SELECT estado FROM turno GROUP BY estado HAVING COUNT(estado) > 2