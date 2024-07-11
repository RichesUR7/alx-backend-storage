-- Task: Create a trigger that resets the `valid_email` attribute only 
-- when the `email` has been changed
-- This script is part of the Back-end SQL MySQL curriculum

DELIMITER $$
CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email <> OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END;$$
DELIMITER ;
