DROP FUNCTION IF EXISTS DivideNumbers;

DELIMITER //

CREATE FUNCTION DivideNumbers(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = dividend  / divisor;
    RETURN result;
END //

DELIMITER ;

SELECT d.id,
       d.order_id,
       d.product_id,
	   d.quantity,
       DivideNumbers(d.quantity, 2) half_quantity
  FROM order_details d;