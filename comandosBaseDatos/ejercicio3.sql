-- Haz lo mismo que el ejercicio anterior, pero con un procedimiento.
delimiter $$
	create procedure ejercicio3(in numero1 int(3), in numero2 int(3), out suma int)
		begin
			set suma = numero1 + numero2;
        end $$
 delimiter ;
 call personal.sumaValoresProcedure(20, 5, @suma);
 select @ejercicio3