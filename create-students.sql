
-- Assignment: Hello SQL
-- Student: Gayatri Kotwal
-- Database: MySQL

-- Create database
CREATE DATABASE IF NOT EXISTS hello_sql;

-- Select database
USE hello_sql;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(100) NOT NULL
);

-- Insert student records
INSERT INTO students (name, age, email, course)
VALUES
('Gayatri Kotwal', 22, 'gayatri@example.com', 'Artificial Intelligence'),
('Priya Sharma', 21, 'priya@example.com', 'Computer Science'),
('Rahul Patil', 23, 'rahul@example.com', 'Data Science'),
('Sneha Joshi', 20, 'sneha@example.com', 'Information Technology'),
('Amit Kulkarni', 22, 'amit@example.com', 'Computer Science');
