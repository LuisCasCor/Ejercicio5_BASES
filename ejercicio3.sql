use personal

delimiter $$
drop procedure if exists sumaNumeros;
$$
create PROCEDURE sumaNumeros(IN num1 INT,IN num2 INT)

begin

 DECLARE suma INT;
 
 set suma = num1 + num2;
 select suma;
end $$

delimiter ;

call sumaNumeros(3, 4);
