-- Escribe una función que devuelva el valor del área de un círculo a partir del valor del radio que se recibirá como parámetro de entrada.
    delimiter $$
        CREATE FUNCTION ejercicio8(radio FLOAT(3))
        RETURNS FLOAT
        DETERMINISTIC
            BEGIN
                DECLARE ecuacion FLOAT;
                    SET ecuacion := 3.14 * radio * radio;
                RETURN ecuacion;
            END $$
    delimiter ;
    CALL ejercicio8();