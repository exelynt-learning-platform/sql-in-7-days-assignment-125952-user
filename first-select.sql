
-- Assignment: Hello SQL
-- First SELECT Query
-- Database: MySQL

-- Select the database
USE hello_sql;

-- Display all student records
SELECT * FROM students;

-- Display only student names
SELECT name FROM students;

-- Display student names and courses
SELECT name, course FROM students;

-- Display students older than 21
SELECT * FROM students
WHERE age > 21;

-- Display students in Computer Science
SELECT * FROM students
WHERE course = 'Computer Science';

-- Display total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- Display students in alphabetical order
SELECT * FROM students
ORDER BY name ASC;
