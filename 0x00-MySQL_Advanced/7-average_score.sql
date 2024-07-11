-- Task: Create a stored procedure `ComputeAverageScoreForUser` that 
-- computes and stores the average score for a student
-- This script is part of the Back-end SQL MySQL curriculum

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id INT)
BEGIN
	UPDATE users
	SET
	average_score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id)
	WHERE id = user_id;

END $$

DELIMITER ;
