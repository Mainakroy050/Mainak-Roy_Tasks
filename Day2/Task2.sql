USE Revature;
SELECT * FROM revature.task1;

CREATE TABLE Employees(
EmployeeID int PRIMARY KEY,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
Email varchar(100) NOT NULL UNIQUE,
Salary int NOT NULL,
DepartmentID INT
);

INSERT INTO Employees VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

CREATE TABLE Departments(
DepartmentID int PRIMARY KEY,
DepartmentName varchar(50) NOT NULL
);

INSERT INTO Departments VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

SELECT * FROM Departments;

CREATE TABLE Projects(
ProjectID int PRIMARY KEY,
ProjectName varchar(100) NOT NULL,
DepartmentID int, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Projects VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

SELECT * FROM Projects;

/* 1. */
ALTER TABLE Employees ADD CHECK (Salary>0);

/* 2. */
ALTER TABLE Employees ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

/* 3. */
ALTER TABLE Employees ADD UNIQUE (Email);

/* 4. */
ALTER TABLE Departments ADD PRIMARY KEY (DepartmentID);

/* 5.  */
ALTER TABLE Projects ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

/* 6.  */
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(13, 'Dushyant', 'R', 'dushyantr@company.com', 100000, 2);

/* 7.  */
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary) VALUES
(13, 'Dushyant', 'R', 'jane.smith@company.com', 100000);

/* 8.  */
DELETE FROM Departments WHERE DepartmentID=2;

/* 9. */
UPDATE Employees SET DepartmentID=2 WHERE EmployeeID=1;
