use personal

delimiter $$
drop function if exists numeroEmpleadosPersonal;
$$
create function numeroEmpleadosPersonal()
RETURNS INT
begin
	
    DECLARE total INT UNSIGNED;
    
	set total = (
	select count(*)
    from empleados, departamento
    where empleados.claveDepto = departamento.claveDepto and departamento.nombre = 'Personal');
    
    return total;
end $$

delimiter ;

select numeroEmpleadosPersonal();
