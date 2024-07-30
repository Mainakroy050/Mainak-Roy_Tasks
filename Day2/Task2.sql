USE REVATURE;
SELECT * FROM revature.task1;
-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Sample Records for Departments Table
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Salary INT NOT NULL CHECK (Salary > 0),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Sample Records for Employees Table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Sample Records for Projects Table
INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

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
-- 6
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (7, 'Alice', 'Green', 'alice.green@company.com', 70000, 999); 

-- 7. 
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (8, 'Bob', 'White', 'john.doe@company.com', 68000, 1); 

DELETE FROM Departments WHERE DepartmentID = 1; 

-- 9. 
UPDATE Employees
SET DepartmentID = 999
WHERE EmployeeID = 1; 
