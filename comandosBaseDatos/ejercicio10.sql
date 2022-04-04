-- Crea una función que devuelva los apellidos de un empleado en función de su DNI. Para ello:
    -- Realiza una primera consulta en la que obtengas en código de empleado a través del DNI. Este resultado debes almacenarlo en una variable.
        delimiter $$
            CREATE PROCEDURE ejercicio10_1(dni VARCHAR(9))
                BEGIN
                    DECLARE obtenerCodigoEmpleado VARCHAR(10);
                        SET obtenerCodigoEmpleado = (
                            SELECT empleados.claveEmpleado
                            FROM empleados INNER JOIN datospersonales ON empleados.claveEmpleado = datospersonales.claveEmpleado
                            WHERE datospersonales.dni = dni
                        );

                    SELECT obtenerCodigoEmpleado;
        delimiter ;
        CALL ejercicio10_1();

    -- Realiza una segunda consulta, utilizando el resultado de la anterior consulta para obtener los apellidos del empleado a través del código de empleado.
        delimiter $$
                CREATE PROCEDURE ejercicio10_2(dni VARCHAR(9))
                    BEGIN
                        DECLARE obtenerCodigoEmpleado VARCHAR(10);
                            SET obtenerCodigoEmpleado = (
                                SELECT empleados.claveEmpleado
                                FROM empleados INNER JOIN datospersonales ON empleados.claveEmpleado = datospersonales.claveEmpleado
                                WHERE datospersonales.dni = dni
                            );

                        SELECT empleados.nombre, empleados.apellidos
                        FROM empleados INNER JOIN datospersonales ON empleados.claveEmpleado = datospersonales.claveEmpleado
                        WHERE datospersonales.dni = dni;
            delimiter ;
            CALL ejercicio10_2();