-- Task: Create a trigger that decreases the quantity of an item after adding a new order
-- This script is part of the Back-end SQL MySQL curriculum

DELIMITER $$
CREATE TRIGGER decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE items
	SET quantity = quantity - NEW.number
	WHERE name = NEW.item_name;
END;$$
DELIMITER ;
