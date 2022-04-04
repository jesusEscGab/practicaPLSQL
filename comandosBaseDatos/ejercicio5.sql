-- Crea un procedimiento que saque la fecha de alta del empleado más antiguo que pertenezca al departamento de Almacén. No necesita parámetros de entrada.
    delimiter $4
        CREATE PROCEDURE ejercicio5()
            BEGIN
                DECLARE fechaEmpleadoAntiguo DATE;
                    SET fechaEmpleadoAntiguo = (
                        SELECT min(datospersonales.fechaAlta)
                        FROM datospersonales, empleados, departamento
                        WHERE datospersonales.claveEmpleado = empleados.claveEmpleado AND empleados.claveDepto = departamento.claveDepto AND departamento.nombre = 'Empaque'
                    );

                    SELECT fechaEmpleadoAntiguo;
            END $$
    delimiter ;
    CALL ejercicio5();