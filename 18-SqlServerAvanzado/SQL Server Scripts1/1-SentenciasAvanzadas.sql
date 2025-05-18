
--INSERT INTO
insert into personEjemplo
select FirstName,lastname from Person.Person


--UPDATE INNER JOIN 
UPDATE Person.Person set Suffix = e.NationalIDNumber
from Person.Person p
inner join HumanResources.Employee e
on e.BusinessEntityID = p.BusinessEntityID
where e.JobTitle = 'Sales Representative'

--DELETE INNER JOIN
DELETE e
from person.EmailAddress e
INNER JOIN person.BusinessEntity b
ON b.BusinessEntityID = e.BusinessEntityID
INNER JOIN HumanResources.Employee h
ON h.BusinessEntityID = b.BusinessEntityID
where h.JobTitle = 'Tool Designer'

--SELECT INTO CREAR UNA TABLA SIMILAR
SELECT * INTO emailBackup
from Person.EmailAddress
WHERE 1=0

--SELECT INTO PARA COPIAR ESTRUCTURA Y DATOS
--tener encuenta que no copia PK ni indices
SELECT * INTO person.personCopia
from Person.Person

--SELECT INTO (copiar una tabla en otro BD)
SELECT * INTO AdventureBak..personAddr
from Person.Address

--SELECT INTO (para copiar tabla con campo IDENTIYY)
SELECT IDENTITY(int,1,1) as id, * INTO AdventureBak..personPhoneNew
FROM Person.PersonPhone

SELECT * FROM adventurebank..personPhoneNew
select * from Person.PersonPhone

--CLONDATABASE
DBCC CLONDATABASE(AdventureBak, AdventureCopia)