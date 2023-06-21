-- Create a new database
CREATE DATABASE john_database;

-- Switch to the newly created database
\c john_database;


-- Create schemas
create schema schemasvjp ;

-- Create a table
CREATE TABLE schemasvjp.users_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    address VARCHAR(100),
    location VARCHAR(50)
);

-- Insert some sample data
INSERT INTO schemasvjp.users_table (name, age, address, location) VALUES
    ('John Doe', 30, '123 Main St', 'New York'),
    ('Jane Smith', 25, '456 Elm St', 'Los Angeles'),
    ('Bob Johnson', 40, '789 Oak St', 'Chicago');



