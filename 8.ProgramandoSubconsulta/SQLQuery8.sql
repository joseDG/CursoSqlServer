USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[CentroMedico]    Script Date: 16/2/2025 16:53:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CentroMedico](
				@idpaciente int
)
AS

SELECT apellido,nombre,idPais,observacion,
	(SELECT ps.Pais from Pais ps WHERE ps.idPais = idPais) descPais
FROM Paciente pa WHERE idPaciente = @idpaciente

