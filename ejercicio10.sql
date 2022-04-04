drop function if exists devuelveApellidos;

delimiter $$
create function devuelveApellidos(DNI varchar(10))
RETURNS VARCHAR (30)
begin
	
	DECLARE claveEmp VARCHAR(8);
    DECLARE apellidosEmpleado VARCHAR(30);
    
	select claveEmpleado
    from datos_personales
    where datos_personales.dni = DNI
    into claveEmp;
    
    
    select apellidos
    from empleados
    where claveEmpleado = claveEmp
    into apellidosEmpleado;
    
    return apellidosEmpleado;
end $$

delimiter ;

select devuelveApellidos("70644119B");
