-- Task: Rank country origins of bands, ordered by the number of (non-unique) fans
-- This script is part of the Back-end SQL MySQL curriculum

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
