drop function if exists maximoDe3;

delimiter $$
create function maximoDe3(n1 INT, n2 INT, n3 INT) 
RETURNS int
begin
	
    DECLARE m int;
    IF n1>n2

    THEN

       IF n1>n3
       
       THEN  set m:=n1;
		
        ELSE 
			set m:=n3;
        END IF;
        
    ELSE

       IF n2>n3
       
       THEN set m:=n2;
		
        ELSE
			set m:=n3;
		END IF;
	END IF;

RETURN m;

end $$

delimiter ;

select maximoDe3(4,7,2);
