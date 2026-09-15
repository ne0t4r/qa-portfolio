CREATE TABLE Employees (
EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
EmployeeFirstName VARCHAR (50) NOT NULL,
EmployeeLastName VARCHAR (50) NOT NULL,
Gender VARCHAR (10) NOT NULL,
StoreID INT);

--1
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Caelan', 'McCallum', 'male', 1);

--2
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('David', 'Inglis', 'male', 2);

--3
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Maisy', 'McMillan', 'female', 3);

--4
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Arianna', 'Khan', 'female', 1);

--5
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Robyn', 'Inglis', 'female', 2);

--6
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Cohen', 'MacFarlane', 'male', 3);

--7
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Cillian', 'Donnelly', NULL, 1);

--8
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Nylah', 'Harris', 'female', 2);

--9
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Saoirse', 'Sinclair', NULL, 3);

--10
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('David', 'Donnelly', 'male', 1);

SELECT * FROM Employees;

ALTER TABLE Employees ALTER COLUMN Gender VARCHAR(10) NULL;

--7
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Cillian', 'Donnelly', NULL, 1);

--9
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Saoirse', 'Sinclair', NULL, 3);

SELECT * FROM Employees;

DELETE FROM Employees
WHERE EmployeeID IN (
    SELECT TOP (4) EmployeeID
    FROM Employees
    ORDER BY EmployeeID DESC
);

SELECT * FROM Employees;

--7
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Cillian', 'Donnelly', NULL, 1);

--8
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Nylah', 'Harris', 'female', 2);

--9
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('Saoirse', 'Sinclair', NULL, 3);

--10
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
OUTPUT INSERTED.*
VALUES ('David', 'Donnelly', 'male', 1);

SELECT * FROM Employees;

DBCC CHECKIDENT ('Employees', NORESEED);

SELECT EmployeeFirstName, EmployeeLastName, Gender, StoreID INTO #Employees
FROM Employees;

TRUNCATE TABLE Employees;

INSERT INTO Employees(EmployeeFirstName, EmployeeLastName, Gender, StoreID)
SELECT EmployeeFirstName, EmployeeLastName, Gender, StoreID
FROM #Employees

DBCC CHECKIDENT ('Employees', NORESEED);
