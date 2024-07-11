-- Task: List all bands with Glam rock as their main style, ranked by their longevity
-- This script is part of the Back-end SQL MySQL curriculum

SELECT band_name, COALESCE(split, 2022) - formed AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
