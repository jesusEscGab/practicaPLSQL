-- Escribe una función que reciba un número entero de entrada y devuelva TRUE si el número es par o FALSE en caso contrario.
    delimiter $$
        CREATE FUNCTION ejercicio6(numero INT)
        RETURNS BOOLEAN
        DETERMINISTIC
            BEGIN
                DECLARE par BOOLEAN;
                    IF numero MOD 2 = 0 THEN
                        SET par := TRUE;
                    ELSE
                        SET par := FALSE;
                    END IF;

                RETURN par;
            END $$
    delimiter ;
    SELECT ejercicio6();