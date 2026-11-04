
-- =====================================
-- HELLO SQL: MY FIRST TABLE
-- Student Management System
-- =====================================

-- 1. Create a database
CREATE DATABASE hello_sql;

-- 2. Select the database
USE hello_sql;

-- 3. Create a students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(100),
    city VARCHAR(50)
);

-- 4. Insert student records
INSERT INTO students
(student_name, age, email, course, city)
VALUES
('Aarav Sharma', 21, 'aarav@gmail.com', 'Computer Science', 'Pune'),
('Priya Patil', 22, 'priya@gmail.com', 'Artificial Intelligence', 'Mumbai'),
('Rahul Deshmukh', 20, 'rahul@gmail.com', 'Data Science', 'Nashik'),
('Sneha Kulkarni', 21, 'sneha@gmail.com', 'Information Technology', 'Pune'),
('Rohan Joshi', 23, 'rohan@gmail.com', 'Computer Science', 'Nagpur');

-- 5. Display all student records
SELECT * FROM students;

-- 6. Display specific columns
SELECT student_name, course FROM students;

-- 7. Find students from Pune
SELECT * FROM students
WHERE city = 'Pune';

-- 8. Find students older than 20
SELECT * FROM students
WHERE age > 20;

-- 9. Update a student's city
UPDATE students
SET city = 'Mumbai'
WHERE student_id = 1;

-- 10. Delete a student record
DELETE FROM students
WHERE student_id = 5;

-- 11. Sort students by name
SELECT * FROM students
ORDER BY student_name ASC;

-- 12. Count total students
SELECT COUNT(*) AS total_students
FROM students;

-- 13. Find students studying Computer Science
SELECT * FROM students
WHERE course = 'Computer Science';
