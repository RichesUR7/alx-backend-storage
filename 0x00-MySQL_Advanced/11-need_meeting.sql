-- Task: Create a view `need_meeting` that lists all students 
-- that have a score under 80 and no `last_meeting` or `last_meeting` more than 1 month ago
-- This script is part of the Back-end SQL MySQL curriculum

CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80 AND (last_meeting IS NULL OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH));
