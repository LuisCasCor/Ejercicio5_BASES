use personal

delimiter $$

create PROCEDURE mostrarVariable()
BEGIN
DECLARE numero INT;
	SET numero = 5;
    
    SELECT numero;
END $$

delimiter ;

call personal.mostrarVariable();
