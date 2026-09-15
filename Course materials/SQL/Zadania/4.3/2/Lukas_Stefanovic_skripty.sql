--1.1
UPDATE Employees SET Gender = 'male' WHERE EmployeeID = 7;
UPDATE Employees SET Gender = 'female' WHERE EmployeeID = 9;

-- check table
SELECT * FROM Employees;

--1.2
UPDATE Employees SET StoreID = 3 WHERE EmployeeID IN (2,4,6,8,10);

-- check table
SELECT * FROM Employees;

--1.3
UPDATE Employees SET StoreID = 2 WHERE EmployeeID IN (1,3,5,7,9);

-- check table
SELECT * FROM Employees;

--1.4
UPDATE Employees SET EmployeeLastName = 'Smith' WHERE EmployeeID = 10;

-- check table
SELECT * FROM Employees;

--1.5
UPDATE Employees SET EmployeeLastName = 'Saor' WHERE EmployeeID = 4;

-- check table
SELECT * FROM Employees;

--1.6
ALTER TABLE Employees ALTER COLUMN EmployeeFirstName VARCHAR(50) NULL;
UPDATE Employees SET EmployeeFirstName = Null;

-- check table
SELECT * FROM Employees;

--2.
	--vymazanie posledneho zaznamu
	DELETE FROM Employees WHERE EmployeeID = 10;
		-- check table
	SELECT * FROM Employees;
	--vlozenie spat
	SET IDENTITY_INSERT Employees ON;
	INSERT INTO Employees (EmployeeID, EmployeeFirstName, EmployeeLastName, Gender, StoreID)
	VALUES (10, NULL, 'Smith', 'male', 3);
	SET IDENTITY_INSERT Employees OFF;
	-- check table
	SELECT * FROM Employees;
	--vymazanie posledneho zaznamu
	DELETE FROM Employees WHERE EmployeeID = 10;
	-- check table
	SELECT * FROM Employees;
--3
DBCC CHECKIDENT ('Employees', NORESEED);

--4
DBCC CHECKIDENT ('Employees', RESEED, 9);

--5
DBCC CHECKIDENT ('Employees', NORESEED);

--6
INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
VALUES (NULL, 'Smith', 'male', 3);
-- check table
SELECT * FROM Employees;