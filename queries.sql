-- Start Using Database
psql my_project example   -- my_project (db name), example (owner name)

-- CRUD operations in postgres

-- Creating table in a database
CREATE TABLE users (id int, name VARCHAR(128), email VARCHAR(128));

-- Insert into table
INSERT INTO users (id, name, email) VALUES ('01', 'mayank', 'mayank@gmail.com');

-- Read data of table
SELECT * FROM users;

-- Update
UPDATE users SET name = 'mynk' WHERE email = 'mayank@gmail.com';

-- Delete
DELETE FROM users WHERE name = 'mynk';