-- Task: Create an index `idx_name_first` on the table `names` and the first letter of `name`
-- This script is part of the Back-end SQL MySQL curriculum

-- Add a generated column for the first letter of the name
-- ALTER TABLE names ADD COLUMN name_first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1));

-- Create an index on the generated column
CREATE INDEX idx_name_first ON names(name(1));
