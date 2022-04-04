-- Utilizando la base de datos PERSONAL:
    -- Crea un procedimiento que devuelva el DNI de un Empleado a partir de su código de empleado.
        delimiter $$
            CREATE PROCEDURE ejercicio4_1(codigoEmp VARCHAR(8))
                BEGIN
                    DECLARE dnieEmp VARCHAR(10);
                        SELECT dni
                        INTO dnieEmp
                        FROM datospersonales
                        WHERE claveEmpleado = codigoEmp;

                    SELECT dnieEmp;
                END $$
        delimiter ;
        CALL ejercicio4_1("");

    -- Crea una función que devuelva en número de empleados que pertenecen al departamento Empaque. No recibe ningún parámetro de entrada.
       delimiter $$
        CREATE FUNCTION ejercicio4_2()
        RETURNS INT
        DETERMINISTIC
            BEGIN
                DECLARE numeroEmpleado INT;
                SET numeroEmpleado = (
                        SELECT count(*)
                        FROM empleados, departamento
                        WHERE empleados.claveDepto = departamento.claveDepto AND departamento.nombre = 'Personal'
                    );
                RETURN numeroEmpleado;
            END $$
        delimiter ;
        CALL ejercicio4_2();
    -- Crea una función que devuelva el número de empleados que pertenecen a un departamento en concreto. El nombre del departamento será parámetro de entrada.
        delimiter $$
            CREATE FUNCTION ejercicio4_3(nombreDepartamento VARCHAR(30))
            RETURNS INT unsigned
            DETERMINISTIC
                BEGIN
                    DECLARE numeroEmpleado INT;
                        SET numeroEmpleado = (
                            SELECT count(*)
                            FROM empleados, departamento
                            WHERE empleados.claveDepto = departamento.claveDepto AND departamento.nombre = nombreDepartamento
                        );
                    RETURN numeroEmpleado;
                END $$
        delimiter ;
        CALL ejercicio4_3("");