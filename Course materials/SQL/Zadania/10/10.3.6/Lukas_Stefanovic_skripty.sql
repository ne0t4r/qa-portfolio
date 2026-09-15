--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--POVINNÁ ÚLOHA:
--1. Vytvorte tabuľku s názvom 'Sales_to_abroad', kde budú záznamy objednávok objednaných mimo Európu. Tabuľka bude obsahovať cenu, číslo zákazníka a jeho celé meno, mesto, štát a PSČ zákazníka, číslo a dátum objednávky, číslo a názov produktu a číslo kategórie produktu. Použite JOIN a SELECT INTO. Tabuľku následne exportujte do CSV s názvom 'Sales_to_abroad.csv'.
SELECT 
    o.OrderID AS 'Číslo objednávky',
    o.OrderDate AS 'Dátum objednávky',
    c.CustomerID AS 'Číslo zákazníka',
    c.FirstName + ' ' + c.LastName AS 'Celé meno zákazníka',
    c.City AS 'Mesto',
    c.State AS 'Štát',
    c.ZipCode AS 'PSČ',
    p.ProductID AS 'Číslo produktu',
    p.ProductName AS 'Názov produktu',
    p.Price AS 'Cena',
    p.CategoryID AS 'Číslo kategórie produktu'
INTO 
    Sales_to_abroad
FROM 
    Orders AS o
JOIN 
    Customers AS c ON o.CustomerID = c.CustomerID
JOIN 
    Products AS p ON o.ProductID = p.ProductID
WHERE 
    c.State NOT IN ('UK', 'Germany', 'France', 'Spain', 'Italy', 'Netherlands', 'Belgium', 'Denmark', 'Sweden', 'Norway', 'Finland', 'Poland', 'Czech Republic', 'Austria', 'Portugal', 'Ireland', 'Greece', 'Hungary', 'Slovakia', 'Slovenia', 'Croatia', 'Bulgaria', 'Romania', 'Lithuania', 'Latvia', 'Estonia', 'Luxembourg', 'Malta', 'Cyprus');

SELECT * FROM Sales_to_abroad

--POVINNÁ ÚLOHA:
--2.1 Vytvorte tabuľku s obratom všetkých objednávok u pôvodných (nie nových) zamestnancov s názvom 'Employees_year_sales', kde bude číslo zamestnanca, jeho celé meno a celková suma uskutočnených objednávok (celkovú sumu nazvi ako 'Sales'). Použite JOIN a SELECT INTO. Tabuľku následne exportujte do CSV s názvom 'Employees_year_sales.csv'.
SELECT 
    e.EmployeeID AS 'Číslo zamestnanca',
    e.FirstName + ' ' + e.LastName AS 'Celé meno zamestnanca',
    SUM(p.Price) AS 'Sales'
INTO 
    Employees_year_sales
FROM 
    Orders AS o
JOIN 
    Employees AS e ON o.EmployeeID = e.EmployeeID
JOIN 
    Products AS p ON o.ProductID = p.ProductID
GROUP BY 
    e.EmployeeID, e.FirstName, e.LastName;

SELECT * FROM Employees_year_sales;

--NEPOVINNÁ ÚLOHA:
--2.2 Napíšte taký postup, aby ste vytvorili tabuľku s obratom všetkých objednávok u pôvodných (nie nových) zamestnancov s názvom 'Employees_year_sales_2', kde bude číslo zamestnanca, jeho celé meno a celková suma uskutočnených objednávok (celkovú sumu nazvi ako 'Sales'). 
--
--Záznamy v tabuľke zoraďte od najvyššej celkovej sumy po najnižšiu. V tejto úlohe použite: JOIN, INSERT INTO SELECT a okrem toho bude potrebné nastaviť v tabuľke 'Employees_year_sales_2' primárny kľúč tak, aby zobrazoval hodnoty od najvyššej hodnoty po najnižšiu (ako pomôcka môže poslúžiť možnosť "Script Table as -> CREATE To -> New Query Editor Window").
--
--Tabuľku následne exportujte do CSV s názvom 'Employees_year_sales_2.csv'.
--
--KONIEC NEPOVINNEJ ÚLOHY

CREATE TABLE Employees_year_sales_2 (
    EmployeeID INT,
    FullName NVARCHAR(50),
    Sales DECIMAL(18, 2),
    PRIMARY KEY (Sales DESC, EmployeeID)
);

INSERT INTO Employees_year_sales_2 (EmployeeID, FullName, Sales)
SELECT 
    e.EmployeeID,
    e.FirstName + ' ' + e.LastName AS FullName,
    SUM(p.Price) AS Sales
FROM 
    Orders AS o
JOIN 
    Employees AS e ON o.EmployeeID = e.EmployeeID
JOIN 
    Products AS p ON o.ProductID = p.ProductID
GROUP BY 
    e.EmployeeID, e.FirstName, e.LastName
ORDER BY 
    Sales DESC;

SELECT * FROM Employees_year_sales_2;


--3. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--4. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--5. SQL súbor so SELECT-ami, súbor .bacpac a oba (prípadne tri) CSV súbory zozipujte a odovzdajte do portálu Metis.