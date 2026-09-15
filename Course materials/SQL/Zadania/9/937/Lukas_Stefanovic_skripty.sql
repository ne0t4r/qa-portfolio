--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. V jednom SELECT-e zobrazte názov, popis a číslo produktu, číslo a dátum objednávky, číslo zamestnanca a jeho celé meno, číslo zákazníka a jeho celé meno (dokopy 11 stĺpcov). Na spojenie tabuliek použite ľavé inkluzívne spojenie. Záznamy zoraďte podľa čísla produktu. Do komentára nad SELECT napíšte počet zobrazených záznamov.

--počet zobrazených záznamov: 114
SELECT
    p.ProductName,
	p.ProductDescription,
    p.ProductID,
    o.OrderID,
    o.OrderDate,
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName
FROM 
    Products AS p
    LEFT JOIN Orders o ON p.ProductID = o.ProductID
    LEFT JOIN Employees e ON o.EmployeeID = e.EmployeeID
    LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY 
    p.ProductID ASC;

--2. V jednom SELECT-e zobrazte názov, popis a číslo produktu, číslo a dátum objednávky, číslo zamestnanca a jeho celé meno, číslo zákazníka a jeho celé meno (dokopy 11 stĺpcov). Na spojenie tabuliek použite ľavé exkluzívne spojenie. Záznamy zoraďte podľa čísla produktu. Do komentára nad SELECT napíšte počet zobrazených záznamov.

--počet zobrazených záznamov: 46
SELECT 
    p.ProductID,
    p.ProductName,
    p.ProductDescription,
    o.OrderID,
    o.OrderDate,
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName
FROM 
    Products AS p
    LEFT JOIN Orders o ON p.ProductID = o.ProductID
    LEFT JOIN Employees e ON o.EmployeeID = e.EmployeeID
    LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE 
    o.OrderID IS NULL
ORDER BY 
    p.ProductID ASC;

--3. V jednom SELECT-e zobrazte názov, popis a číslo produktu, číslo a dátum objednávky, číslo zamestnanca a jeho celé meno, číslo zákazníka a jeho celé meno (dokopy 11 stĺpcov). Na spojenie tabuliek použite JOIN, ktorý zobrazí prienik všetkých použitých tabuliek. Záznamy zoraďte podľa čísla produktu. Do komentára nad SELECT napíšte počet zobrazených záznamov.

--počet zobrazených záznamov: 68
SELECT 
    p.ProductID,
    p.ProductName,
    p.ProductDescription,
    o.OrderID,
    o.OrderDate,
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName
FROM 
    Products AS p
    INNER JOIN Orders o ON p.ProductID = o.ProductID
    INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY 
    p.ProductID ASC;

--4. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--5. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--6. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.