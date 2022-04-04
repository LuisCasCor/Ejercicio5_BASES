drop procedure if exists actualizaFechas;
delimiter $$
create PROCEDURE actualizaFechas(IN nombreDep VARCHAR(30), OUT mensaje VARCHAR(2))

begin

DECLARE DNIempleado VARCHAR(30);
DECLARE fechaAlta date;
	select datos_personales.fecha_alta, datos_personales.dni 
    into fechaAlta, DNIempleado
    from datos_personales, empleados, departamento
    where empleados.claveEmpleado = datos_personales.claveEmpleado AND departamento.claveDepto = empleados.claveDepto AND departamento.nombre=nombreDep order by datos_personales.fecha_alta LIMIT 1;

	UPDATE datos_personales SET fecha_alta = "2022-04-01" WHERE dni = DNIempleado;
    
    set mensaje := "OK";
    
end $$

delimiter ;

call actualizaFechas("Logística", @mensaje);
select @mensaje;

Select * FROM datos_personales ORDER BY fecha_alta DESC;
