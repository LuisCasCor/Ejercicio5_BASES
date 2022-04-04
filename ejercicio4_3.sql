use personal

delimiter $$
drop function if exists numeroEmpleados;
$$
create function numeroEmpleados(nombreDepto VARCHAR(30))
RETURNS INT
begin
	
    DECLARE total INT UNSIGNED;
    
	set total = (
	select count(*)
    from empleados, departamento
    where empleados.claveDepto = departamento.claveDepto and departamento.nombre = nombreDepto);
    
    return total;
end $$

delimiter ;

select numeroEmpleados("Logística");
