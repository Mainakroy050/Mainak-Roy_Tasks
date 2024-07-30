CREATE DATABASE school_management;
USE school_management;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    course_description TEXT,
    credits INT
);

ALTER TABLE school_management.students
ADD COLUMN grade VARCHAR(2);

ALTER TABLE school_management.students
MODIFY COLUMN phone_number VARCHAR(15);

INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES 
('Pradhan', 'dads', 'prad.h@example.com', '4545458781', '2000-01-01', 'A'),
('Pratyush', 'samanta', 'praty.h@example.com', '566456455', '2001-02-02', 'B'),
('Rahul', 'Mohanty', 'Rahul.j@le.com', '6545646545', '2002-03-03', 'A');

INSERT INTO courses (course_name, course_description, credits)
VALUES 
('Mathematics', 'Basic mathematics course', 3),
('English', 'English language', 4),
('History', 'history ', 3),
('Biology', 'biology', 4),
('Computer Science', 'computer science', 3);

SELECT first_name, last_name, email FROM students;

DROP TABLE students;

DROP DATABASE school_management;
