--OPERADORES LOGICOS

--OPERADPOR AND
SELECT * FROM Paciente WHERE apellido='Diaz' and nombre='Jose' and idPaciente=7

--OPERADOR OR
SELECT * FROM Paciente WHERE apellido='Diaz' or nombre='Jose' or idPaciente=7

--OPERADOR IN
SELECT * FROM turno WHERE estado IN(2,1,3)
SELECT * FROM Paciente WHERE apellido IN('diaz','ramirez','Zabaleta')

--OPERADOR LIKE
SELECT * FROM Paciente WHERE nombre LIKE '%ober%'

--OPERADOR NOT
SELECT * FROM Paciente WHERE apellido NOT IN('perez','ramirez','Gonzales')
SELECT * FROM Paciente WHERE nombre NOT LIKE '%ober%'

--OPERADOR BETWEEN
SELECT * FROM Turno WHERE fechaTurno BETWEEN '1105148959' AND '19920617'
SELECT * FROM Turno WHERE estado BETWEEN 3 AND 7 

--EJERCICIO
SELECT * FROM Paciente WHERE apellido = 'Diaz'
AND(nombre='jose' OR idPaciente=7 OR idPais='PER')
AND idPaciente NOT IN(6,3)