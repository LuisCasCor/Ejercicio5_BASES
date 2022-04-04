use personal

delimiter $$

create function suma(num1 INT, num2 INT)
RETURNS int
begin

 DECLARE suma INT;
 
 set suma = num1 + num2;

return suma;

end $$

delimiter ;

select suma(3, 4);
