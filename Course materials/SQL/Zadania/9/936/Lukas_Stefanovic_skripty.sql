--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.
--1. V jednom SELECT-e zobrazte názov kategórie, názov produktu a jeho cenu. Okrem týchto troch stĺpcov ešte zobrazte štvrtý stĺpec, ktorý sa bude volať 'CategoryPrice' a bude mať nasledovné špecifikácie:
--*ak je cena produktu menšia ako 100, v stĺpci zobrazte 'Very Cheap'
--*ak je cena produktu väčšia alebo rovná 100, no zároveň menšia ako 500, v stĺpci zobrazte 'Cheap'
--*ak je cena produktu väčšia alebo rovná 500, no zároveň menšia ako 1000, v stĺpci zobrazte 'Expensive'
--*ak je cena produktu väčšia alebo rovná 1000, v stĺpci zobrazte 'Very Expensive'
--V SELECT-e použite klauzulu GROUP BY a záznamy zoraďte od najvyššej ceny.

SELECT 
    c.CategoryName,
    p.ProductName,
    p.Price AS Price,
    CASE
        WHEN p.Price < 100 THEN 'Very Cheap'
        WHEN p.Price >= 100 AND p.Price < 500 THEN 'Cheap'
        WHEN p.Price >= 500 AND p.Price < 1000 THEN 'Expensive'
        WHEN p.Price >= 1000 THEN 'Very Expensive'
	END AS CategoryPrice
FROM 
    Categories AS c
    JOIN Products AS p ON c.CategoryID = p.CategoryID
GROUP BY 
    c.CategoryName, 
    p.ProductName, 
    p.Price
ORDER BY 
    p.Price DESC;

--2.V jednom SELECT-e zobrazte zamestnanecké číslo, celé meno zamestnanca, pohlavie, číslo pracoviska, názov pracoviska, telefón, email pracoviska a celú adresu pracoviska aj s PSČ (dokopy 12 stĺpcov). SELECT bude obsahovať starých aj nových zamestnancov zoradených podľa ich ID od 1 do 16. Pôvodní zamestnanci budú mať pôvodné ID hodnoty od 1 do 10. Noví zamestnanci budú mať hodnoty ID 11 až 16. Číslovanie je potrebné dodržať!
--UPOZORNENIE: Je zakázané akokoľvek zmeniť ID nových zamestnancov v tabuľke 'Employees_new' pomocou UPDATE alebo REPLACE()! ID nových zamestnancov zostane v tabuľke 'Employees_new' na pôvodných hodnotách. ID nových zamestnancov bude zmenené na hodnoty od 11 do 16 iba v danom SELECT-e.

SELECT 
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS FullName,
    e.Gender,
    s.StoreID,
    s.StoreName,
    s.Phone,
    s.Email,
    CONCAT(s.Street, ', ', s.City, ', ', s.State, ', ', s.ZipCode) AS FullAddress
FROM 
    Employees AS e
    LEFT JOIN Stores s ON e.StoreID = s.StoreID

UNION ALL

SELECT 
    e_n.EmployeeID + 10 AS EmployeeID,
    CONCAT(e_n.FirstName, ' ', e_n.LastName) AS FullName,
    e_n.Gender,
    s.StoreID,
    s.StoreName,
    s.Phone,
    s.Email,
    CONCAT(s.Street, ', ', s.City, ', ', s.State, ', ', s.ZipCode) AS FullAddress
FROM 
    Employees_new AS e_n
    LEFT JOIN Stores s ON e_n.StoreID = s.StoreID

ORDER BY 
    EmployeeID ASC;


--3. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--4. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--5. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.