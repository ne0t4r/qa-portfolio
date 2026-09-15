--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. V jednom SELECT-e zobrazte názov kategórie, názov produktu a cenu tých produktov, ktorých ID kategórie je párne a cena je väčšia ako 200. Záznamy zoraďte podľa ceny zostupne. Spojenie medzi tabuľkami vykonajte bez použitia JOIN-ov.
SELECT 
    CategoryName, 
    ProductName, 
    Price
FROM 
    Categories AS c, 
    Products AS p
WHERE 
    c.CategoryID = p.CategoryID
    AND p.CategoryID % 2 = 0
    AND p.Price > 200
ORDER BY 
    p.Price DESC;

--2. V jednom SELECT-e zobrazte názov produktu a jeho cenu, číslo objednávky a jej dátum, číslo zamestnanca a jeho celé meno. Záznam zoraďte podľa čísla zamestnanca od najmenšieho po najväčšie. Spojenie medzi tabuľkami vykonajte bez použitia JOIN-ov.
SELECT 
    p.ProductName, 
    p.Price, 
    o.OrderID, 
    o.OrderDate, 
    e.EmployeeID, 
    CONCAT(FirstName, ' ', LastName) AS 'Meno a priezvisko zamestnanca'
FROM 
    Products AS p, 
    Orders AS o, 
    Employees AS e
WHERE 
    p.ProductID = o.ProductID	
    AND o.OrderID = e.EmployeeID
ORDER BY 
    e.EmployeeID ASC;

--3. V jednom SELECT-e zobrazte číslo objednávky, číslo zákazníka, číslo produktu, číslo zamestnanca a celé meno tých zákazníkov, ktorí si neobjednali doteraz žiaden produkt. Záznamy zoraďte podľa čísla zákazníka od najmenšieho. Spojenie medzi tabuľkami vykonajte pomocou RIGHT JOIN-u.
--Poznámka: pozor na poradie tabuliek a spoločných stĺpcov.
SELECT 
    o.OrderID, 
    c.CustomerID, 
    o.ProductID, 
    o.EmployeeID, 
    CONCAT(c.FirstName, ' ', c.LastName) AS 'Meno Priezvisko zákazníka'
FROM 
    Customers AS c
    RIGHT JOIN Orders AS o ON c.CustomerID = o.CustomerID
    LEFT JOIN Employees AS e ON o.EmployeeID = e.EmployeeID
WHERE 
    o.ProductID IS NULL
ORDER BY 
    c.CustomerID ASC;

--4. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--5. Projektovú Databázu vyexportuj do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--6. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.