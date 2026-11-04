
-- Assignment: Hello SQL
-- Student Name: Gayatri Kotwal
-- Database: MySQL

-- Create database
CREATE DATABASE IF NOT EXISTS hello_sql;

-- Select database
USE hello_sql;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    marks INT NOT NULL
);

-- Insert student records
INSERT INTO students (name, city, marks)
SELECT 'Gayatri Kotwal', 'Pune', 92
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE name = 'Gayatri Kotwal'
);

INSERT INTO students (name, city, marks)
SELECT 'Priya Sharma', 'Mumbai', 85
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE name = 'Priya Sharma'
);

INSERT INTO students (name, city, marks)
SELECT 'Rahul Patil', 'Nashik', 88
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE name = 'Rahul Patil'
);

INSERT INTO students (name, city, marks)
SELECT 'Sneha Joshi', 'Pune', 90
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE name = 'Sneha Joshi'
);

INSERT INTO students (name, city, marks)
SELECT 'Amit Kulkarni', 'Nagpur', 78
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE name = 'Amit Kulkarni'
);
