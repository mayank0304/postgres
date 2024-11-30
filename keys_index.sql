-- KEYS 

CREATE TABLE users (id SERIAL, name VARCHAR(128), email VARCHAR(128) UNIQUE, PRIMARY KEY(id));
-- AUTO-INCREMENT
SERIAL implies that id must be auto-incremented.

-- UNIQUE ( Also Known as LOGICAL KEY)
UNIQUE implies that email column/attribute must be unique, there should not be same email in this column.

-- PRIMARY KEY 
PRIMRARY KEY: constraint that uniquely identifies each row in a table.

-- Copy from a csv file
\copy users(name, email) FROM 'path/to/csv/file' WITH DELIMITER ',' CSV;

-- Indexes: Used to enhance the speed of data retrievel operations on a database table 

-- B-Trees and Hash is used for indexing
-- Hash Function(MD5, SHA1, SHA256) These are hashing alogorithms
