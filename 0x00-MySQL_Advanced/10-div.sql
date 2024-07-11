-- Task: Create a function `SafeDiv` that divides the first number by the second number,
-- or returns 0 if the second number is equal to 0.
-- This script is part of the Back-end SQL MySQL curriculum.

DELIMITER $$
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS FLOAT
BEGIN
	IF b = 0 THEN
		RETURN 0;
	ELSE
		RETURN a / b;
	END IF;
END;$$
DELIMITER ;
