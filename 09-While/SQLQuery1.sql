
declare @valor int
declare @resultado char(10)=''
set @valor = 100

set @resultado = (CASE WHEN @valor = 10 THEN 'Rojo'
					   WHEN @valor = 20 THEN 'VERDE'
					   WHEN @valor = 30 THEN 'AZUL'
					ELSE 'GRIS'
				  END)
print @resultado

SELECT *,(CASE WHEN estado=1 THEN 'VERDE'
			   WHEN estado=2 THEN 'ROJO'
			   WHEN estado=3 THEN 'AZUL'
		  ELSE 'GRIS'
		  END) as colorTurno from turno 