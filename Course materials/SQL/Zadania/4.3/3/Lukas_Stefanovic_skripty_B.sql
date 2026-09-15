--B
	--1	
	INSERT INTO Stores (StoreName, Phone, Email, Street, City, State, ZipCode)
	OUTPUT inserted.StoreID, inserted.StoreName, inserted.Phone, inserted.Email, inserted.Street, inserted.City, inserted.State, inserted.ZipCode
	VALUES
	('Head Store', '(402)765-7007', 'head.store@gmail.com', '77 N. Old Crossroads', 'Aberdeen', 'UK', '1224'),
	('Backup Store', '(402)765-8008', 'backup.store@gmail.com', '88 At Graveyard St.', 'Aberdeen', 'UK', '1224'),
	('Warehouse Store', '(402)765-9009', 'warehouse.store@gmail.com', '99 Smith St.', 'Aberdeen', 'UK', '1224');
	--check table
	SELECT * FROM Stores;
	
	--2	
	INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
	OUTPUT inserted.EmployeeID, inserted.EmployeeFirstName, inserted.EmployeeLastName, inserted.Gender, inserted.StoreID
	VALUES
	('Caelan', 'McCallum', 'male', 1),
	('David', 'Inglis', 'male', 2),
	('Maisy', 'McMillan', 'female', 3),
	('Arianna', 'Khan', 'female', 1),
	('Robyn', 'Inglis', 'female', 2),
	('Cohen', 'MacFarlane', 'male', 3),
	('Cillian', 'Donnelly', 'male', 1),
	('Nylah', 'Harris', 'female', 3),
	('Saoirse', 'Sinclair', 'female', 3),
	('David', 'Donnelly', 'male', 1);
	
	--3
	INSERT INTO Employees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
	OUTPUT inserted.EmployeeID, inserted.EmployeeFirstName, inserted.EmployeeLastName, inserted.Gender, inserted.StoreID
	VALUES
	('Caelan', 'McCallum', 'male', 4),
	('David', 'Inglis', 'male', 5),
	('Maisy', 'McMillan', 'female', 6),
	('Arianna', 'Khan', 'female', 4),
	('Robyn', 'Inglis', 'female', 5),
	('Cohen', 'MacFarlane', 'male', 6),
	('Cillian', 'Donnelly', 'male', 4),
	('Nylah', 'Harris', 'female', 6),
	('Saoirse', 'Sinclair', 'female', 6),
	('David', 'Donnelly', 'male', 4);	
