--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. V jednom SELECT-e zobrazte číslo objednávky, číslo produktu, celé meno tých zákazníkov, ktorí si neobjednali doteraz žiaden produkt, číslo zamestnanca a celé meno zamestnanca. Spojenie medzi tabuľkami vykonajte pomocou FULL OUTER JOIN-u, tak aby prvé dva stĺpce a posledné tri stĺpce obsahovali iba NULL hodnoty.

SELECT 
    o.OrderID AS 'Číslo objednávky',
    NULL AS 'Číslo produktu',
    c.FirstName + ' ' + c.LastName AS 'Meno zákazníka',
    e.EmployeeID AS 'Číslo zamestnanca',
    e.FirstName + ' ' + e.LastName AS 'Meno zamestnanca'
FROM 
    Orders o
FULL OUTER JOIN 
    Products p ON o.ProductID = p.ProductID
FULL OUTER JOIN 
    Customers c ON o.CustomerID = c.CustomerID
FULL OUTER JOIN 
    Employees e ON o.EmployeeID = e.EmployeeID
WHERE 
    o.OrderID IS NULL OR c.CustomerID IS NULL AND o.ProductID IS NULL;


--2. Napíšte nasledovné CROSS JOIN-y tabuliek:
--2.1 Categories a Customers
SELECT * 
FROM Categories c
CROSS JOIN Customers cu;
--0 sek
-- 350

--2.2 Categories, Customers a Employees
SELECT * 
FROM Categories c
CROSS JOIN Customers cu
CROSS JOIN Employees e;
-- 0 sek
-- 3500

--2.3 Categories, Customers, Employees a Employees_new
SELECT * 
FROM Categories c
CROSS JOIN Customers cu
CROSS JOIN Employees e
CROSS JOIN Employees_new en;
-- 0 sek
-- 21 000

--2.4 Categories, Customers, Employees, Employees_new a Orders
SELECT * 
FROM Categories c
CROSS JOIN Customers cu
CROSS JOIN Employees e
CROSS JOIN Employees_new en
CROSS JOIN Orders o;
-- 17sek
-- 1 491 000

--2.5 Categories, Customers, Employees, Employees_new, Orders a Stores
SELECT * 
FROM Categories c
CROSS JOIN Customers cu
CROSS JOIN Employees e
CROSS JOIN Employees_new en
CROSS JOIN Orders o
CROSS JOIN Stores s;
-- 1m 7sek
-- 4 473 000

--2.6 Categories, Customers, Employees, Employees_new, Orders, Stores a Products 
SELECT * 
FROM Categories c
CROSS JOIN Customers cu
CROSS JOIN Employees e
CROSS JOIN Employees_new en
CROSS JOIN Orders o
CROSS JOIN Stores s
CROSS JOIN Products p;
-- Vykonávanie JOIN-u zrušené

--2.7 Ku každému CROS JOIN-u napíšte do komentára karteziánsky súčin výsledných záznamov a čas vykonania SELECT-u. 
--Poznámka: Ak vykonávanie niektorého CROSS JOINU presiahne čas 5 minút, zrušte vykonávanie tohto SELECT-u a do komentára k nemu napíšte: 'Vykonávanie JOIN-u zrušené'.

--3. V jednom SELECT-e zobrazte porovnanie cien produktu a názov kategórie tých produktov, ktoré majú nepárne číslo kategórie. Záznamy zoraďte podľa čísla kategórie a ceny produktu vzostupne. V SELECT-e použite aj SELF JOIN.
--3.1 Porovnanie cien bude mať nasledovný formát:
--'The product ProductName1 (PriceProductName1 $) is more expensive than ProductName2 (PriceProductName2 $).'
--3.2 Tento SELECT bude pozostávať z 2 stĺpcov.
--Poznámka: body 3.1 a 3.2 budú súčasťou jedného SELECT-u.
-- 3. Porovnanie cien produktu a názov kategórie tých produktov, ktoré majú nepárne číslo kategórie

SELECT 
    'The product ' + p1.ProductName + ' (' + CAST(p1.Price AS VARCHAR) + '$) is more expensive than ' + p2.ProductName + ' (' + CAST(p2.Price AS VARCHAR) + '$).' AS Comparison,
    c.CategoryName
FROM 
    Products p1
JOIN 
    Products p2 ON p1.CategoryID = p2.CategoryID AND p1.Price > p2.Price
JOIN 
    Categories c ON p1.CategoryID = c.CategoryID
WHERE 
    p1.CategoryID % 2 <> 0
ORDER BY 
    p1.CategoryID, p1.Price;

--4. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--5. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--6. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.