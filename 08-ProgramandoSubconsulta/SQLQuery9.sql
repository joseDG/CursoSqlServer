EXEC CentroMedico 

--SELECT
SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento ASC
SELECT TOP 20 * FROM Paciente WHERE apellido='Diaz'
SELECT * FROM Paciente WHERE nombre='Jose' and apellido='Diaz'
SELECT * FROM Paciente
SELECT DISTINCT apellido FROM Paciente

SELECT apellido,MAX(idPaciente) from Paciente GROUP BY apellido