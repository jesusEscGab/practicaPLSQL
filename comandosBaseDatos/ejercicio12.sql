-- Escribe un procedimiento que reciba un número real de entrada, que representa el valor de la nota de un alumno, y muestre un mensaje indicando qué nota ha obtenido teniendo en cuenta las siguientes condiciones:
    delimiter $$
	CREATE PROCEDURE ejercicio12(IN numeroNota INTEGER(4))
		BEGIN
			DECLARE palabraNota VARCHAR(20);
            
            CASE
				WHEN numeroNota BETWEEN 1 AND 4.9 THEN SET palabraNota := 'Insuficiente';
                WHEN numeroNota BETWEEN 5 AND 5.9 THEN SET palabraNota := 'Aprobado';
                WHEN numeroNota BETWEEN 6 AND 6.9 THEN SET palabraNota := 'Bien';
                WHEN numeroNota BETWEEN 7 AND 8.9 THEN SET palabraNota := 'Notable';
                WHEN numeroNota BETWEEN 9 AND 10 THEN SET palabraNota := 'Sobresaliente';
                ELSE SET palabraNota := 'Valor introducido no válido';
			END CASE;
            
            SELECT palabraNota;
        END $$
    delimiter ;
    call ejercicio12();