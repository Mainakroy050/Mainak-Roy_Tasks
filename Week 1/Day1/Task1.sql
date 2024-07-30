CREATE DATABASE college2;
use college2;

CREATE TABLE students(
s_id INT PRIMARY KEY,
s_name VARCHAR(20),s_age INT);

INSERT INTO students (s_id,s_name,s_age) VALUES
(1,"Ram",12),
(2,"Shamam",21);

SELECT * FROM students;
