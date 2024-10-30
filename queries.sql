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
-- WHERE CLAUSE in update

-- Delete
DELETE FROM users WHERE name = 'mynk';

-- Let the table name be employees
-- DEMO TABLE STRUCTORE 
CREATE TABLE employees (employee_id int, name VARCHAR(128), email VARCHAR(128), department VARCHAR(30));

-- ORDER BY CLAUSE 
-- Order by clause to select statements to get the results sorted
SELECT * FROM employees ORDER BY email; 
-- By default ascending order, add DESC at the end to get the result in descending order

-- LIKE CLAUSE
SELECT * FROM employees WHERE name LIKE '%J%';

-- LIMIT and OFFSET
-- WE can request the first "n" rows, or thw first "n" rows after skipping some rows
-- the OFFSET starts from zero.
SELECT * FROM employees WHERE name LIke '%a%' OFFSET 1 LIMIT 2;
-- OFFSET means skip some number of rows

-- COUNT the number of rows
SELECT COUNT(*) FROM employees;