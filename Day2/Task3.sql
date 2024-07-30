USE REVATURE;
SELECT * FROM revature.task1;

/*
Tasks: 
 
- Select the first name, last name, and salary of the top 3 employees with the highest salaries.
- Select the first name, last name, and salary of the top 3 employees with the lowest salaries.
 
 
- Select the first name, last name, and salary of the employee with the 2nd highest salary.
 
 
- Select the first name, last name, and salary of the employee with the 2nd lowest salary.
 
- Select the first name, last name, and salary of the employee with the 3rd highest salary.
 
- Select the first name, last name, and salary of the employee with the 3rd lowest salary.
 
 - Select the first name, last name, email, and salary of employees with a salary between 65000 and 80000, ordered by their first name in descending order, and limit the result to 3 rows. 
*/
-- 1
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- 2

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 3;


-- 3

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


-- 4
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 1;
-- 5
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- 6

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 2;

-- 7

SELECT first_name, last_name, email, salary
FROM employees
WHERE salary BETWEEN 65000 AND 80000
ORDER BY first_name DESC
LIMIT 3;



