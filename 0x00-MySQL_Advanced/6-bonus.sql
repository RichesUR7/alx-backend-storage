k: Create a stored procedure `AddBonus` that adds a new correction for a student
-- This script is part of the Back-end SQL MySQL curriculum

DELIMITER $$
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
        DECLARE project_id INT;

        -- check if the project already exists
        SELECT id INTO project_id FROM projects WHERE name = project_name;

        -- if the project does not exist, create it
        IF project_id IS NULL THEN
                INSERT INTO projects (name) VALUES (project_name);
                SET project_id = LAST_INSERT_ID();
        END IF;

        -- Add the new correction
        INSERT INTO corrections (user_id, project_id, score) VALUES (user_id, project_id, score);
END;$$
DELIMITER ;
