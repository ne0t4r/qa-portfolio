
--A) Práca s príkazom SELECT INTO:
--A1) Medzidatabázové kopírovanie:

--1. Z Projektovej Databázy skopírujte do Pracovnej Databázy celú tabuľku Customers so všetkými stĺpcami. Použite príkaz SELECT INTO. Novú tabuľku v Pracovnej Databáze nazvite: Customers_DB1_DB2_new. 
SELECT * INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_new FROM [Lukas_Stefanovic_projekt_DB].[dbo].Customers;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_new;
--2. Z Projektovej Databázy skopírujte do Pracovnej Databázy stĺpce (CustomerFirstName, CustomerLastName a "State") z tabuľky Customers. Použite príkaz SELECT INTO. Novú tabuľku v Pracovnej Databáze nazvite: Customers_DB1_DB2_short. 
SELECT CustomerFirstName, CustomerLastName, State INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_short FROM [Lukas_Stefanovic_projekt_DB].[dbo].Customers;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_short;
--3. Z Projektovej Databázy skopírujte do Pracovnej Databázy stĺpce (CustomerFirstName, CustomerLastName a "State") z tabuľky Customers s podmienkou WHERE, kde bude "State" = New Zealand. Použite príkaz SELECT INTO. Novú tabuľku v Pracovnej Databáze nazvite: Customers_DB1_DB2_where. 
SELECT CustomerFirstName, CustomerLastName, State INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_where FROM [Lukas_Stefanovic_projekt_DB].[dbo].Customers WHERE State = 'New Zealand';
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_where;

--A2) Vnútrodatabázové kopírovanie:
--4. Použite príkaz SELECT INTO a skopírujte z tabuľky Customers_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze) všetky stĺpce do novej tabuľky s názvom: Customers_DB2_DB2_new (tabuľka sa nachádza v Pracovnej Databáze). 
SELECT * INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_new FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_new;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_new;
--5. Použite príkaz SELECT INTO a skopírujte z tabuľky Customers_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (CustomerFirstName, CustomerLastName, "State") do novej tabuľky s názvom: Customers_DB2_DB2_short (tabuľka sa nachádza v Pracovnej Databáze). 
SELECT CustomerFirstName, CustomerLastName, State INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_short FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_new;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_short;
--6. Použite príkaz SELECT INTO. Skopírujte z tabuľky Customers_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (CustomerFirstName, CustomerLastName, "State"). Použite podmienku WHERE, kde bude "State" = New Zealand. Údaje kopírujte do novej tabuľky s názvom: Customers_DB2_DB2_where (tabuľka sa nachádza v Pracovnej Databáze).
SELECT CustomerFirstName, CustomerLastName, State INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_where FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB1_DB2_new WHERE State = 'New Zealand';
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Customers_DB2_DB2_where;


--B) Práca s príkazom INSERT INTO SELECT:
--B1) Medzidatabázové kopírovanie:
--1.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB1_DB2_new. Tabuľka Employees_DB1_DB2_new bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)), Gender (VARCHAR(10)), StoreID (INT).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new (
  EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50),
    Gender VARCHAR(10),
    StoreID INT);
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new;

--1.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze) všetky stĺpce (okrem stĺpca ID) z tabuľky Employees (tabuľka sa nachádza v Projektovej Databáze). 
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
SELECT EmployeeFirstName, EmployeeLastName, Gender, StoreID
FROM [Lukas_Stefanovic_projekt_DB].[dbo].Employees;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new;

--2.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB1_DB2_short. Tabuľka Employees_DB1_DB2_short bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].[Employees_DB1_DB2_short] (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50));
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].[Employees_DB1_DB2_short];

--2.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB1_DB2_short (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (EmployeeFirstName, EmployeeLastName) z tabuľky Employees (tabuľka sa nachádza v Projektovej Databáze). 
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_short (EmployeeFirstName, EmployeeLastName)
SELECT EmployeeFirstName, EmployeeLastName
FROM [Lukas_Stefanovic_projekt_DB].[dbo].Employees;

SELECT* FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_short;


--3.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB1_DB2_where. Tabuľka Employees_DB1_DB2_where bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_where (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50));
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_where;

--3.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB1_DB2_where (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (EmployeeFirstName, EmployeeLastName) s podmienkou WHERE, kde bude StoreID = 1, z tabuľky Employees (tabuľka sa nachádza v Projektovej Databáze). 
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_where (EmployeeFirstName, EmployeeLastName)
SELECT EmployeeFirstName, EmployeeLastName
FROM [Lukas_Stefanovic_projekt_DB].[dbo].Employees
WHERE StoreID = 1;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_where;

--B2) Vnútrodatabázové kopírovanie:
--4.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB2_DB2_new. Tabuľka Employees_DB2_DB2_new bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)), Gender (VARCHAR(10)), StoreID (INT).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_new (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50),
    Gender VARCHAR(10),
    StoreID INT);
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_new;

--4.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB2_DB2_new (tabuľka sa nachádza v Pracovnej Databáze) všetky stĺpce  (okrem stĺpca ID) z tabuľky Employees_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze). 
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_new (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
SELECT EmployeeFirstName, EmployeeLastName, Gender, StoreID
FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new;

SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_new;

--5.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB2_DB2_short. Tabuľka Employees_DB2_DB2_short bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_short (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50));

SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_short;

--5.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB2_DB2_short (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (EmployeeFirstName, EmployeeLastName) z tabuľky Employees_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze).
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_short (EmployeeFirstName, EmployeeLastName)
SELECT EmployeeFirstName, EmployeeLastName
FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new;

SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_short;

--6.1 V Pracovnej Databáze vytvorte tabuľku Employees_DB2_DB2_where. Tabuľka Employees_DB2_DB2_where bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50).
CREATE TABLE [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_where (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50));
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_where;

--6.2 Pomocou príkazu INSERT INTO SELECT skopírujte do tabuľky Employees_DB2_DB2_where (tabuľka sa nachádza v Pracovnej Databáze) stĺpce (EmployeeFirstName, EmployeeLastName) s podmienkou WHERE, kde StoreID = 1, z tabuľky Employees_DB1_DB2_new (tabuľka sa nachádza v Pracovnej Databáze). 
INSERT INTO [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_where (EmployeeFirstName, EmployeeLastName)
SELECT EmployeeFirstName, EmployeeLastName
FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB1_DB2_new WHERE StoreID = 1;
SELECT * FROM [Lukas_Stefanovic_pracovna_DB].[dbo].Employees_DB2_DB2_where;

--C) NEPOVINNÁ ÚLOHA - DOČASNÉ TABUĽKY
--1. Z Projektovej Databázy skopírujte do dočasnej tabuľky #tempCustomers celú tabuľku Customers so všetkými stĺpcami. Použite príkaz SELECT INTO. Jednoduchým SELECT-om zobrazte skopírované záznamy.
SELECT * INTO #tempCustomers FROM [Lukas_Stefanovic_projekt_DB].[dbo].Customers;
SELECT * FROM #tempCustomers;
--2. Vytvorte dočasnú tabuľku #tempEmployees. Tabuľka bude obsahovať stĺpce: EmployeeFirstName (VARCHAR(50)), EmployeeLastName (VARCHAR(50)), Gender (VARCHAR(10)), StoreID (INT).
CREATE TABLE #tempEmployees (
    EmployeeFirstName VARCHAR(50),
    EmployeeLastName VARCHAR(50),
    Gender VARCHAR(10),
    StoreID INT);
SELECT * FROM #tempEmployees;

--3. Pomocou príkazu INSERT INTO SELECT skopírujte do dočasnej tabuľky #tempEmployees všetky potrebné stĺpce z Projektovej Databázy z tabuľky Employees. Jednoduchým SELECT-om zobrazte skopírované záznamy.
INSERT INTO #tempEmployees (EmployeeFirstName, EmployeeLastName, Gender, StoreID)
SELECT EmployeeFirstName, EmployeeLastName, Gender, StoreID
FROM [Lukas_Stefanovic_projekt_DB].[dbo].Employees;
SELECT * FROM #tempEmployees;

--4. Pomocou syntaxe odstráňte obe dočasné tabuľky.
DROP TABLE IF EXISTS #tempCustomers;
DROP TABLE IF EXISTS #tempEmployees;