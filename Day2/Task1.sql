-- Create Employees table
USE REVATURE;
SELECT * FROM revature.task1;

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Salary INT NOT NULL,
    Department VARCHAR(50)
);

-- Sample Records
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, Department) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 'Marketing'),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 'Sales'),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 'Marketing'),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 'IT'),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 'Sales'),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 'IT'),
(7, 'Robert', 'Miller', 'robert.miller@company.com', 70000, 'Finance'),
(8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 'Finance'),
(9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 'IT'),
(10, 'Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 'Sales'),
(11, 'William', 'Brown', 'william.brown@company.com', 78000, 'Marketing'),
(12, 'Sophia', 'Davis', 'sophia.davis@company.com', 62000, 'HR');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Practice Questions

-- 1. 
ALTER TABLE Employees
ADD CONSTRAINT chk_Salary CHECK (Salary > 0);

-- 2. 
ALTER TABLE Employees
ADD DepartmentID INT,
ADD CONSTRAINT fk_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- 3. 
ALTER TABLE Employees
ADD CONSTRAINT uq_Email UNIQUE (Email);

-- 4. 
ALTER TABLE Departments
ADD CONSTRAINT pk_DepartmentID PRIMARY KEY (DepartmentID);

-- 5. 
 
ALTER TABLE Projects
ADD CONSTRAINT fk_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
-- 6. 
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (13, 'Alice', 'Green', 'alice.green@company.com', 70000, 999); 

-- 7. 
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, Department)
VALUES (14, 'Bob', 'White', 'john.doe@company.com', 68000, 'Marketing'); -- Duplicate email

-- 8.
DELETE FROM Departments WHERE DepartmentID = 1; 

-- 9.
UPDATE Employees
SET DepartmentID = 999
WHERE EmployeeID = 1; 