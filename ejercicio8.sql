drop function if exists areaCirculo;

delimiter $$
create function areaCirculo(radio INT) 
RETURNS double
begin
	
    DECLARE area double;
    SET area := 3.14 * radio * radio;
	RETURN area;
end $$

delimiter ;

select areaCirculo(4);
