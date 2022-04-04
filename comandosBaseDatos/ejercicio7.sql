--  Escribe un procedimiento que reciba como parámetro de entrada un valor numérico que represente un día de la semana y que devuelva una cadena de caracteres con el nombre del día de la semana correspondiente. Por ejemplo, para el valor de entrada 1 debería devolver la cadena lunes.
    delimiter $$
        CREATE PROCEDURE ejercicio7(IN dia INTEGER(1))
            BEGIN
                DECLARE palabraDia VARCHAR(35);
                    CASE
                        WHEN dia = 1 THEN SET palabraDia = 'Lunes';
                        WHEN dia = 2 THEN SET palabraDia = 'Martes';
                        WHEN dia = 3 THEN SET palabraDia = 'Miercoles';
                        WHEN dia = 4 THEN SET palabraDia = 'Jueves';
                        WHEN dia = 5 THEN SET palabraDia = 'Viernes';
                        WHEN dia = 6 THEN SET palabraDia = 'Sabado';
                        WHEN dia = 7 THEN SET palabraDia = 'Domingo';
                            ELSE SET palabraDia := 'Has introducido un numero no valido';
                    END CASE;
                SELECT palabraDia;
            END $$
    delimiter ;
    CALL ejercicio7();