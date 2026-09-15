	--A
--2
CREATE TABLE Stores (
StoreID INT IDENTITY (1,1) PRIMARY KEY,
StoreName VARCHAR(50),
Phone VARCHAR(50),
Email VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
ZipCode VARCHAR(50));
--check table
SELECT * FROM Stores;

--3
INSERT INTO Stores (StoreName, Phone, Email, Street, City, State, ZipCode)
OUTPUT inserted.StoreID, inserted.StoreName, inserted.Phone, inserted.Email, inserted.Street, inserted.City, inserted.State, inserted.ZipCode
VALUES
('Head Store', '(402)765-7007', 'head.store@gmail.com', '77 N. Old Crossroads', 'Aberdeen', 'UK', '1224'),
('Backup Store', '(402)765-8008', 'backup.store@gmail.com', '88 At Graveyard St.', 'Aberdeen', 'UK', '1224'),
('Warehouse Store', '(402)765-9009', 'warehouse.store@gmail.com', '99 Smith St.', 'Aberdeen', 'UK', '1224');

--4
ALTER TABLE Employees
ADD CONSTRAINT fk_employees_stores
FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
ON DELETE CASCADE;

--5
DELETE FROM Stores
WHERE StoreID = 3;

SELECT * FROM Stores;

SELECT * FROM Employees;

--6
DELETE FROM Stores
WHERE StoreID = 2;

SELECT * FROM Stores;

SELECT * FROM Employees;

--7
DELETE FROM Stores
WHERE StoreID = 1;

SELECT * FROM Stores;

SELECT * FROM Employees;
