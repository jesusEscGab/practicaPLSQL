-- Declara una función que dándole dos números realice la suma de éstos.
    delimiter $$
        CREATE FUNCTION ejercicio2(numero1 INT, numero2 INT)
        RETURNS INT
        DETERMINISTIC
            BEGIN
                DECLARE suma INT;
                    SET suma = numero1 + numero2;

                RETURN suma;
            END $$
    delimiter ;
    SELECT ejercicio2(10, 10);