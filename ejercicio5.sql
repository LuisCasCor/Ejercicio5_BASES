use personal

delimiter $$
drop procedure if exists sacarFecha;
$$
create PROCEDURE sacarFecha(OUT fecha date)

begin
	select datos_personales.fecha_alta
    into fecha
    from datos_personales, empleados, departamento
    where empleados.claveEmpleado = datos_personales.claveEmpleado AND departamento.claveDepto = empleados.claveDepto AND departamento.nombre='Logística' order by datos_personales.fecha_alta LIMIT 1;
end $$

delimiter ;

call sacarFecha(@fecha);
select @fecha;
