USE hw5;

DROP FUNCTION IF EXISTS DivideNumbers;

DELIMITER //

CREATE FUNCTION DivideNumbers(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE result FLOAT;
    IF divisor = 0 THEN
        SET result = NULL;
    ELSE
        SET result = dividend / divisor;
    END IF;
    RETURN result;
END //

DELIMITER ;

SELECT 
    quantity, 
    DivideNumbers(quantity, 2) AS divided_quantity
FROM 
    order_details;







