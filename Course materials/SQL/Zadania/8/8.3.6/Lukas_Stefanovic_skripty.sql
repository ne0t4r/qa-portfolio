--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. Pracujte s tabuľkou Customers. 
--1.1 Pomocou viacerých SELECT-ov spojených množinovou operáciou roztrieďte emaily na kategórie spolu s ich počtami:
--
--* yahoo emaily
--
--* hotmail emaily
--
--* gmail emaily
--
--* aol emaily
--
--* msn emaily
--1.2 Roztriedené emaily sa zobrazia v jednom stĺpci. Tento stĺpec nazvite ako 'Email categories'
--1.3 Výsledok týchto viacerých SELECT-ov bude nasledovný:
--Email categories (názov stĺpca)
--xy Hotmail emails (výsledok riadku)
--xy AOL emails (výsledok riadku)
--xy MSN emails (výsledok riadku)
--xy Yahoo emails (výsledok riadku)
--xy Gmail emails (výsledok riadku)
--1.4 v SELECT-och budete musieť použiť aj funkcie z minulých lekcií
--Poznámka: body 1.1, 1.2, 1.3 a 1.4 budú súčasťou jedného výstupu. Výsledok bude obsahovať 1 stĺpec s 5 riadkami.
SELECT 
    CAST(COUNT(*) AS VARCHAR) + ' yahoo emaily' AS 'Email categories'
FROM Customers
WHERE Email LIKE '%@yahoo.%'

UNION ALL

SELECT 
    CAST(COUNT(*) AS VARCHAR) + ' hotmail emaily' AS 'Email categories'
FROM Customers
WHERE Email LIKE '%@hotmail.%'

UNION ALL

SELECT 
    CAST(COUNT(*) AS VARCHAR) + ' gmail emaily' AS 'Email categories'
FROM Customers
WHERE Email LIKE '%@gmail.%'

UNION ALL

SELECT 
    CAST(COUNT(*) AS VARCHAR) + ' aol emaily' AS 'Email categories'
FROM Customers
WHERE Email LIKE '%@aol.%'

UNION ALL

SELECT 
    CAST(COUNT(*) AS VARCHAR) + ' msn emaily' AS 'Email categories'
FROM Customers
WHERE Email LIKE '%@msn.%';

--2. Pracujte s tabuľkou Customers.
--2.1 Zobrazte iba email zákazníkov
--2.2 Zobrazte nový email zákazníkov, ktorý bude obsahovať príponu -metis.academy. Tento stĺpec nazvite ako 'New Email' (Vysvetlenie: napr. pôvodný email 'alysia.nicholson@hotmail.com' bude po novom vyzerať ako 'alysia.nicholson@metis.academy').
--2.3 Záznamy zoraďte podľa abecedy
--Poznámka č. 1: použite funkciu REPLACE()
--Poznámka č. 2: body 2.1, 2.2 a 2.3 budú súčasťou jedného výstupu. V tomto SELECT-e budú 2 stĺpce (prvý stĺpec bude obsahovať rôzne emailové prípony (-hotmail.com, -msn.com,-yahoo.com, -gmail.com alebo -aol.com), druhý stĺpec bude obsahovať iba príponu -metis.academy).
SELECT
    Email,
    REPLACE(Email, SUBSTRING(Email, CHARINDEX('@', Email), LEN(Email)), '@metis.academy') AS 'New Email'
FROM 
    Customers
ORDER BY 
    Email ASC;

--3. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--4. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--5. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.