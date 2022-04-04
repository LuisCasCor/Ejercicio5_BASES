drop function if exists parImpar;

delimiter $$
create function parImpar(numero INT) 
RETURNS boolean
begin
	
    DECLARE par boolean;
    
	IF MOD(numero,2) = 1
    THEN set par = false;
    ELSE set par = true;
    END IF;
	RETURN par;
end $$

delimiter ;

select parImpar(6);

