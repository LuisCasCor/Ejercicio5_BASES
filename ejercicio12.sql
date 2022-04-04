drop procedure if exists notas;
delimiter $$
create PROCEDURE notas(IN nota int, OUT notaEscrita VARCHAR(50))

begin
	CASE
		WHEN nota>=0 AND nota<5 THEN set notaEscrita = "Insuficiente"; 
        WHEN nota>=5 AND nota<6 THEN set notaEscrita = "Aprobado"; 
        WHEN nota>=6 AND nota<7 THEN set notaEscrita = "Bien"; 
        WHEN nota>=7 AND nota<9 THEN set notaEscrita = "Notable"; 
        WHEN nota>=9 AND nota<=10 THEN set notaEscrita = "Sobresaliente"; 
        ELSE set notaEscrita = "Ha introducido un valor no valido";
	END CASE;
end $$

delimiter ;

call notas(8, @notaEscrita);
select @notaEscrita;

