-- Crea un procedimiento que actualice la fecha de alta del empleado más antiguo de cada departamento. Para ello:
    -- Se realiza una consulta con utilizando en nombre del departamento (tabla departamento) para sacar la fecha de alta (tabla DatosPersonales) más antigua de dicho departamento. Necesitamos almacenar alguno de los datos de dicho empleado en una variable para poder actualizar dicho registro.
        delimiter $$
        CREATE PROCEDURE ejercicio11(IN nombreDepartamento VARCHAR(20))
            BEGIN
                DECLARE fechaAntigua DATE;
                    SET fechaAntigua = (
                        SELECT MIN(datospersonales.fechaAlta)
                        FROM datospersonales, empleados, departamento
                        WHERE datospersonales.claveEmpleado = empleados.claveEmpleado
                        AND empleados.claveDepto = departamento.claveDepto
                        AND departamento.nombre = nombreDepartamento
                    );
                    
                    SELECT fechaAntigua;
            END $$
        delimiter ;
        call ejercicio10();

    -- Con la información almacenada en la variable definida anteriormente, se realiza un UPDATE para actualizar la fecha de dicho empleado al día de hoy. Declara una variable tipo VARCHAR que contenga en mensaje OK que se devolverá mostrará cuando se ejecute el procedimiento.
         delimiter $$
     	CREATE PROCEDURE ejercicio11(IN nombreDepartamento VARCHAR(20))
     		BEGIN
     			DECLARE MENSAJE VARCHAR (2);
     			DECLARE fechaAntigua DATE;
     				SET fechaAntigua = (
     					SELECT MIN(datospersonales.fechaAlta)
                         FROM datospersonales, empleados, departamento
                         WHERE datospersonales.claveEmpleado = empleados.claveEmpleado
                         AND empleados.claveDepto = departamento.claveDepto
                         AND departamento.nombre = nombreDepartamento
                     );
                     
     			 UPDATE datospersonales
                     SET fechaAlta = '2022-04-04'
                     WHERE fechaAlta = fechaAntigua;
                     SET MENSAJE := 'OK';
                     
                     SELECT MENSAJE;
                     
                     
             END $$
          delimiter ;
          call ejercicio11();

     -- Se hace una llamada para ejecutar el procedimiento, y posteriormente, se realiza una consulta a la tabla correspondiente ordenando por fecha de alta DESC para comprobar que cambio realizado es el esperado.
          delimiter $$
     	CREATE PROCEDURE ejercicio11(IN nombreDepartamento VARCHAR(20))
     		BEGIN
     			DECLARE MENSAJE VARCHAR (2);
     			DECLARE fechaAntigua DATE;
     				SET fechaAntigua = (
     					SELECT MIN(datospersonales.fechaAlta)
                         FROM datospersonales, empleados, departamento
                         WHERE datospersonales.claveEmpleado = empleados.claveEmpleado
                         AND empleados.claveDepto = departamento.claveDepto
                         AND departamento.nombre = nombreDepartamento ORDER BY datospersonales.fechaAlta DESC
                     );
                     
     			 SELECT fechaAntigua;
                     
                     
             END $$
          delimiter ;
          call ejercicio11();