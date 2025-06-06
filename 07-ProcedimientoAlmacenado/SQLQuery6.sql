USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 16/2/2025 13:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[S_paciente](
			@idpaciente int
)
AS

--DECLARACION DE VARIABLES
DECLARE @ordenamiento CHAR(1) = 'A'
DECLARE @valorOrdenamiento CHAR(1)

DECLARE @entero INT
SET @entero=NULL
SELECT ISNULL(@entero, 0)AS Valor

DECLARE @decimal DECIMAL(10,2)
SET @decimal = NULL
SELECT ISNULL(@decimal,0.00)AS Valor

DECLARE @cadena VARCHAR(50)
SET @cadena = NULL
SELECT ISNULL(@cadena, 'Texto predeterminado') AS Valor

DECLARE @fecha DATETIME
SET @fecha = NULL
SELECT ISNULL(@fecha, GETDATE()) AS Valor

DECLARE @booleano BIT
SET @booleano = NULL
SELECT ISNULL(@booleano, 0) AS Valor

DECLARE @moneda MONEY
SET @moneda = NULL
SELECT ISNULL(@moneda, 0.00) AS Valor


SET @valorOrdenamiento = ISNULL(@ordenamiento,'A')
PRINT @valorOrdenamiento

--(asignar un valor) SET @ordenamiento = 'A'

SELECT * FROM paciente WHERE idpaciente =  @idpaciente

