CREATE DATABASE school_management;
USE school_management;

CREATE TABLE school_management.students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
);
CREATE TABLE school_management.courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    course_description TEXT,
    credits INT
);

ALTER TABLE school_management.students
ADD COLUMN grade VARCHAR(2);

ALTER TABLE school_management.students
MODIFY COLUMN phone_number VARCHAR(15);

INSERT INTO school_management.students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2000-01-01', 'A'),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2001-02-02', 'B'),
('Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', '2002-03-03', 'A');

INSERT INTO school_management.courses (course_name, course_description, credits)
VALUES 
('Mathematics', 'Basic mathematics course', 3),
('English', 'English language and literature', 4),
('History', 'World history overview', 3),
('Biology', 'Introduction to biology', 4),
('Computer Science', 'Fundamentals of computer science', 3);

SELECT first_name, last_name, email FROM school_management.students;

DROP TABLE school_management.students;

DROP DATABASE school_management;
