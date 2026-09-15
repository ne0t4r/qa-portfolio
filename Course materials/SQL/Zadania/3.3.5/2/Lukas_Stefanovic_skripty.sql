CREATE TABLE [Lukas_Stefanovic_projekt_DB].[dbo].Stores(
StoreID INT IDENTITY (1,1) PRIMARY KEY,
StoreName VARCHAR(50),
Phone VARCHAR(50),
Email VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
ZipCode VARCHAR(50));

INSERT INTO Stores(
StoreName,Phone,Email,Street,City,State,ZipCode)
OUTPUT inserted.StoreID,inserted.StoreName,inserted.Phone,inserted.Email,inserted.Street,inserted.City,inserted.State,inserted.ZipCode
VALUES
('Head Store','(402)765-7007','head.store@gmail.com','77 N. Old Crossroads','Aberdeen','UK','1224'),
('Backup Store','(402)765-8008','backup.store@gmail.com','88 At Graveyard St.','Aberdeen','UK','1224'),
('Warehouse Store','(402)765-9009','warehouse.store@gmail.com','99 Smith St.','Aberdeen','UK','1224');

CREATE TABLE [Lukas_Stefanovic_projekt_DB].[dbo].Employees(
EmployeeID INT IDENTITY (1,1) PRIMARY KEY,
EmployeeFirstName VARCHAR (50),
EmployeeLastName VARCHAR (50),
Gender VARCHAR (10),
StoreID INT);

INSERT INTO Employees(
EmployeeFirstName,EmployeeLastName,Gender,StoreID)
OUTPUT inserted.EmployeeID,inserted.EmployeeFirstName,inserted.EmployeeLastName,inserted.Gender,inserted.StoreID
VALUES
  ('Caelan', 'McCallum', 'male', 1),
  ('David', 'Inglis', 'male', 2),
  ('Maisy', 'McMillan', 'female', 3),
  ('Arianna', 'Khan', 'female', 1),
  ('Robyn', 'Inglis', 'female', 2),
  ('Cohen', 'MacFarlane', 'male', 3),
  ('Cillian', 'Donnelly', 'male', 1),
  ('Nylah', 'Harris', 'female', 2),
  ('Saoirse', 'Sinclair', 'female', 3),
  ('David', 'Donnelly', 'male', 1);

CREATE TABLE [Lukas_Stefanovic_projekt_DB].[dbo].Categories(
CategoryID INT IDENTITY (1,1) PRIMARY KEY,
CaregoryName VARCHAR(50));

DROP TABLE Categories;
DROP TABLE Categories;
DROP TABLE IF EXISTS Categories;

CREATE TABLE [Lukas_Stefanovic_projekt_DB].[dbo].Categories(
CategoryID INT IDENTITY (1,1) PRIMARY KEY,
CategoryName VARCHAR(50) CONSTRAINT uniqueCategory UNIQUE (CategoryName));

INSERT INTO Categories(
CategoryName)
OUTPUT inserted.CategoryID,inserted.CategoryName
VALUES
  ('Procesory'),
  ('Základné dosky'),
  ('Grafické karty'),
  ('Pamäte RAM'),
  ('Disky a SSD'),
  ('Skrinky a zdroje'),
  ('Chladenie');

 ALTER TABLE Employees 
 ADD CONSTRAINT fk_store FOREIGN KEY (StoreID) REFERENCES Stores(StoreID);