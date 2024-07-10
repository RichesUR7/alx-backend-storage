-- Task: Create a table named `users` in MySQL with specific attributes
-- This script is part of the Back-end SQL MySQL curriculum

CREATE TABLE IF NOT EXISTS users (
    -- `id` is an integer that auto increments and serves as the primary key
    id INT AUTO_INCREMENT,

    -- `email` is a string of up to 255 characters that must be unique and not null
    email VARCHAR(255) NOT NULL,

    -- `name` is a string of up to 255 characters
    name VARCHAR(255),

    -- `country` is an enumeration of countries: US, CO and TN, never null
    -- default will be the first element of the enumeration, here US
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',

    -- Define `id` as the primary key
    PRIMARY KEY (id),

    -- Ensure that `email` is unique across all records
    UNIQUE (email)
);
