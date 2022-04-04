use personal

delimiter $$
drop procedure if exists sacarDNI;
$$
create PROCEDURE sacarDNI(IN claveEmp VARCHAR(8), OUT DNI VARCHAR(10))

begin
	select datos_personales.dni
    into DNI
    from datos_personales
    where datos_personales.claveEmpleado = claveEmp; 
end $$

delimiter ;

call sacarDNI('EMP09', @DNI);
select @DNI;
