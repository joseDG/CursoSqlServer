
--BUSQUEDAS
SELECT * FROM Person.Person P
LEFT JOIN Person.EmailAddress E
ON E.BusinessEntityID = P.BusinessEntityID
WHERE ISNULL(E.BusinessEntityID, '') = ''
AND ISNULL(P.Title, '') = ''

--CASE 
declare @nombre char(30)=NULL
set @nombre = 'Roberto'

SELECT * FROM Person.Person
WHERE firstname = (CASE WHEN ISNULL(@nombre, '')<>'' THEN @nombre
						ELSE FirstName
					END)

--BSUQEDAS ENTRE BASES DE DATOS
-------------------------------
INSERT INTO Person.EmailAddress
SELECT * FROM Person.EmailAddress A
RIGHT JOIN AdventureWorks2022.Person.EmailAddress B
ON B.BusinessEntityID = A.BusinessEntityID
WHERE ISNULL(A.BusinessEntityID,0) = 0

----------------------------------------
