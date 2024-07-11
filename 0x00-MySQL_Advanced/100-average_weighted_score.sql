-- Task: Create a stored procedure `ComputeAverageWeightedScoreForUser` that 
-- computes and stores the average weighted score for a student.
-- This script is part of the Back-end SQL MySQL curriculum.

DELIMITER $$
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	-- hold the average weighted score.
	DECLARE avg_weighted_score FLOAT;

	-- compute the average weighted score
    SELECT SUM(c.score * p.weight) / SUM(p.weight) INTO avg_weighted_score
    FROM corrections c
    JOIN projects p ON c.project_id = p.id
    WHERE c.user_id = user_id;

	-- store the average score in the `users` table
	UPDATE users SET average_score = avg_weighted_score WHERE id = user_id;
END;$$
DELIMITER ;
