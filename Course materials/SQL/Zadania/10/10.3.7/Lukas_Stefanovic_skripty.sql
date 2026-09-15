--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. Do tabuľky 'Employees_new' nahrajte štyri nové záznamy tak, aby mali číslo ID od 7 do 10. Zvyšné stĺpce (okrem stĺpca ID) budú mať všetky hodnotu NULL. Následne aktualizujte tieto štyri nové záznamy tak, aby obsahovali všetky údaje pôvodných zamestnancov, ktorí majú ekvivalentné ID číslo.
--Poznámka: v rámci aktualizácie využi spojenie príkazu UPDATE a JOIN. Po aktualizácii musí byť v tabuľke pôvodných šesť záznamov a štyri nové záznamy s aktualizovanými údajmi.

BEGIN TRAN
SET IDENTITY_INSERT Employees_new ON;

INSERT INTO Employees_new (EmployeeID, FirstName, LastName, Gender, StoreID)
VALUES 
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL);

SET IDENTITY_INSERT Employees_new OFF;

UPDATE en
SET 
    en.FirstName = e.FirstName,
    en.LastName = e.LastName,
    en.Gender = e.Gender,
    en.StoreID = e.StoreID
FROM 
    Employees_new AS en
JOIN 
    Employees AS e ON en.EmployeeID = e.EmployeeID
WHERE 
    en.EmployeeID BETWEEN 7 AND 10;

SELECT * FROM Employees_new;
SELECT * FROM Employees;
COMMIT TRAN

--2. Napíšte SELECT, ktorý zobrazí iba úplne zhodné riadky medzi tabuľkou 'Employees_new' a 'Employees'.
--Poznámka: SELECT by mal zobraziť iba štyri záznamy.
SELECT 
    en.EmployeeID,
    en.FirstName,
    en.LastName,
    en.Gender,
    en.StoreID
FROM 
    Employees_new AS en
INNER JOIN 
    Employees AS e ON 
        en.EmployeeID = e.EmployeeID AND
        en.FirstName = e.FirstName AND
        en.LastName = e.LastName AND
        en.Gender = e.Gender AND
        en.StoreID = e.StoreID;


--3. Vymažte z tabuľky 'Employees_new' tie záznamy, ktoré sa zhodujú v pohlaví s tabuľkou 'Employees'. Následne vyexportujte do CSV súboru tabuľku 'Employees_new'.
-- Vymazanie záznamov z tabuľky Employees_new, ktoré sa zhodujú v pohlaví (Gender) s tabuľkou Employees
BEGIN TRAN
DELETE en
FROM Employees_new AS en
INNER JOIN Employees AS e ON en.Gender = e.Gender AND en.EmployeeID = e.EmployeeID;
SELECT * FROM Employees_new;
SELECT * FROM Employees;
COMMIT TRAN

--4. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--5. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--6. SQL súbor so SELECT-ami, súbor .bacpac a CSV súbor zozipujte do .zip súboru a odovzdajte do portálu Metis.
--