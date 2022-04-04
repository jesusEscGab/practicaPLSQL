-- Crea un procedimiento que declare una variable y muestre por pantalla su valor.
    delimiter $$
        CREATE PROCEDURE ejercicio1()
            BEGIN
                DECLARE numero INT;
                    SET numero = 3;

                SELECT numero;
            END $$
    delimiter ;
    CALL ejercicio1();