-- Escribe una función que reciba tres números reales como parámetros de entrada y devuelva el mayor de los tres.
    delimiter $$
    CREATE FUNCTION ejercicio9 (numero1 INT(3), numero2 INT(3), numero3 INT(3))
    RETURNS INT
    DETERMINISTIC
        BEGIN
        DECLARE numeroMayor INT;

        IF numero1 > numero2 AND numero1 > numero3 THEN
        SET numeroMayor := numero1;
        ELSEIF numero2 > numero1 AND numero2 > numero3 THEN
        SET numeroMayor := numero2;
        ELSEIF numero3 > numero1 AND numero3 > numero2 THEN
        SET numeroMayor := numero3;
        END IF;

        RETURN numeroMayor;
        END $$
    delimiter ;
    call ejercicio9();