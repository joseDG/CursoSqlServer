

SELECT * FROM Paciente

UPDATE Paciente SET email = 'correo1@correo.com' WHERE idPaciente = 4
UPDATE Paciente set dni = '1133333333', domicilio='Calle cuenca y pasaje' WHERE idPaciente = 4 

--DELETE
SELECT * FROM Paciente
DELETE FROM Paciente WHERE idPaciente = 6

--DELETE Foreign Key
SELECT * FROM TurnoPaciente
DELETE FROM TurnoPaciente WHERE idTurno = 1
