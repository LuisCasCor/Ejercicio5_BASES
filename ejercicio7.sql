drop procedure if exists numSemana;
delimiter$$
create PROCEDURE numSemana(IN dia int, OUT diaEscrito VARCHAR(20))

begin
	CASE
		WHEN dia=1 THEN set diaEscrito = "Lunes"; 
        WHEN dia=2 THEN set diaEscrito = "Martes"; 
        WHEN dia=3 THEN set diaEscrito = "Miercoles"; 
        WHEN dia=4 THEN set diaEscrito = "Jueves"; 
        WHEN dia=5 THEN set diaEscrito = "Viernes"; 
        WHEN dia=6 THEN set diaEscrito = "Sabado"; 
        WHEN dia=7 THEN set diaEscrito = "Domingo"; 
	END CASE;
end $$

delimiter ;

call numSemana(5, @diaEscrito);
select @diaEscrito;
