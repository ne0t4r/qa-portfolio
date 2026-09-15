--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. Pomocou skriptov premenujte stĺpce:
--1.1 v tabuľke Customers: 
--* 'CustomerFirstName' premenujte na 'FirstName'
EXEC sp_rename 'Customers.CustomerFirstName', 'FirstName', 'COLUMN';
SELECT * FROM Customers;
--* 'CustomerLastName' premenujte na 'LastName'
EXEC sp_rename 'Customers.CustomerLastName', 'LastName', 'COLUMN';
SELECT * FROM Customers;
--1.2 v tabuľke Employees
--* 'EmployeeFirstName' premenujte na 'FirstName'
EXEC sp_rename 'Employees.EmployeeFirstName', 'FirstName', 'COLUMN';
SELECT * FROM Employees;
--* 'EmployeeLastName' premenujte na 'LastName'
EXEC sp_rename 'Employees.EmployeeLastName', 'LastName', 'COLUMN';
SELECT * FROM Employees;
--
--2. Vytvorte novú tabuľku s názvom 'Employees_new'. Tabuľka 'Employees_new' bude obsahovať stĺpce: EmployeeID (INT, IDENTITY(1,1), PRIMARY KEY), FirstName (VARCHAR(50)), LastName (VARCHAR(50)), Gender (VARCHAR(10)), StoreID (INT).
CREATE TABLE Employees_new (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    StoreID INT);

SELECT * FROM Employees_new;

--3. Pomocou BULK INSERT-u vložte do tabuľky 'Employees_new' šesť nových záznamov podľa priloženého obrázka:
BULK INSERT Employees_new
FROM 'D:\My documents\ITvKurze\SQL\Zadania\8\8.3.7\employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
SELECT * FROM Employees_new;

--4. Zobrazte mená a priezviská prieniku medzi tabuľkou zákazníkov a nových zamestnancov.
SELECT FirstName, LastName
FROM Customers
INTERSECT
SELECT FirstName, LastName
FROM Employees_new;

--5. Odpočítajte od tabuľky zákazníkov nových zamestnancov.
SELECT FirstName, LastName
FROM Customers
EXCEPT
SELECT FirstName, LastName
FROM Employees_new;

--6. Vyberte iba unikátne záznamy a zobrazte všetky mená a priezviská zákazníkov, zamestnancov a nových zamestnancov.
SELECT FirstName, LastName
FROM Customers

UNION

SELECT FirstName, LastName
FROM Employees

UNION

SELECT FirstName, LastName
FROM Employees_new;

--7. Vyberte všetky záznamy a zobrazte všetky mená a priezviská zákazníkov, zamestnancov a nových zamestnancov.
SELECT FirstName, LastName
FROM Customers

UNION ALL

SELECT FirstName, LastName
FROM Employees

UNION ALL

SELECT FirstName, LastName
FROM Employees_new;

--8. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--9. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--10. CSV súbor použitý pri BULK INSERT-e, SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.
--
--P.S.: študenti, ktorí pracujú s macOS, použijú namiesto BULK INSERT-u klasický INSERT INTO skript.