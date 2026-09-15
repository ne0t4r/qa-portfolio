--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách. 
--
--1. Pracujte s tabuľkou Orders. Použite jednoduchý výraz CASE. Vstupný výraz bude ID číslo zamestnancov. Výraz CASE napíšte tak, aby ste vo WHEN klauzule použili ID čísla zamestnancov a v THEN klauzule použili adekvátne k nim ich celé mená. Výraz CASE nazvite ako 'Employee'. Zobrazte počet záznamov na základe ID čísla zamestnancov (počet nazvite ako 'Count of Orders'). Záznamy zatrieďte do skupín podľa ID čísla zamestnancov. Záznamy zoraďte podľa 'Count of Orders' zostupne. Zobrazte prvé tri záznamy (použite klauzulu WITH TIES).
SELECT TOP (3) WITH TIES
	CASE
		WHEN EmployeeID = 1 THEN 'Caelan McCallum'
        WHEN EmployeeID = 2 THEN 'David Inglis'
		WHEN EmployeeID = 3 THEN 'Maisy McMillan'
        WHEN EmployeeID = 4 THEN 'Arianna Khan'
		WHEN EmployeeID = 5 THEN 'Robyn Inglis'
		WHEN EmployeeID = 6 THEN 'Cohen MacFarlane'
		WHEN EmployeeID = 7 THEN 'Cillian Donnelly'
		WHEN EmployeeID = 8 THEN 'Nylah Harris'
		WHEN EmployeeID = 9 THEN 'Saoirse Sinclair'
		WHEN EmployeeID = 10 THEN 'David Donnelly'
	END AS Employee,
	COUNT(*) AS 'Count of Orders'
FROM
	Orders
GROUP BY
	EmployeeID
ORDER BY
	'Count of Orders' DESC;

--2. Pracujte s tabuľkou Products. Použite jednoduchý výraz CASE. Vstupný výraz bude ID kategórií. Výraz CASE napíšte tak, aby ste vo WHEN klauzule použili ID kategórií a v THEN klauzule použili adekvátne k nim názvy kategórií. Výraz CASE nazvite ako 'Category'. Zobrazte minimálnu a maximálnu cenu v rámci každej kategórie. Minimálnu cenu nazvite ako 'Min Price'. Maximálnu cenu nazvite ako 'Max Price'. Záznamy zatrieďte do skupín podľa ID kategórií. Záznamy zoraďte podľa ID kategórií vzostupne.
SELECT 
    CASE
        WHEN CategoryID = 1 THEN 'Procesory'
        WHEN CategoryID = 2 THEN 'Základné dosky'
        WHEN CategoryID = 3 THEN 'Grafické karty'
        WHEN CategoryID = 4 THEN 'Pamäte RAM'
        WHEN CategoryID = 5 THEN 'Disky a SSD'
        WHEN CategoryID = 6 THEN 'Skrinky a zdroje'
        WHEN CategoryID = 7 THEN 'Chladenie'
    END AS 'Category',   
    MIN(Price) AS 'Min Price',
    MAX(Price) AS 'Max Price'
FROM 
    Products
GROUP BY 
    CategoryID
ORDER BY 
    CategoryID;

--3. Pracujte s tabuľkou Employees. Použite jednoduchý výraz CASE. Vstupný výraz bude ID obchodov. Výraz CASE napíšte tak, aby ste vo WHEN klauzule použili ID obchodov a v THEN klauzule použili adekvátne k nim ich názvy. Výraz CASE nazvite ako 'Stores'. Zobrazte počet záznamov na základe ID obchodov (počet nazvite ako 'Employees at Store'). Záznamy zatrieďte do skupín podľa ID obchodov. Záznamy zoraďte podľa 'Employees at Store'.
SELECT * FROM Stores;
SELECT 
    CASE
        WHEN StoreID = 1 THEN 'Head Store'
        WHEN StoreID = 2 THEN 'Backup Store'
        WHEN StoreID = 3 THEN 'Warehouse Store'
    END AS 'Stores',
    COUNT(*) AS 'Employees at Store'
FROM 
    Employees
GROUP BY 
    StoreID
ORDER BY 
    'Employees at Store';

--4. Pracujte s tabuľkou Products. Použite vyhľadávajúci výraz CASE. Výraz CASE napíšte tak, aby ste použili booleovské výrazy:
--*ak je cena menšia alebo rovná 300, potom výraz vypíše 'Very Low'
--*ak je cena väčšia ako 300 a zároveň menšia alebo rovná 500, potom výraz vypíše 'Low'
--*ak je cena väčšia ako 500 a zároveň menšia alebo rovná 1000, potom výraz vypíše 'Medium'
--*ak je cena väčšia ako 1000 a zároveň menšia alebo rovná 2000, potom výraz vypíše 'High'
--*ak je cena väčšia ako 2000, potom výraz vypíše 'Very High'
--Výraz CASE nazvite ako 'Price category'. Okrem výrazu CASE zobrazte v SELECT- aj ID produktov, názov produktov a ich cenu. Záznamy zatrieďte do skupín podľa ID produktov, mena produktov a ceny. Záznamy zoraďte podľa ceny produktov vzostupne a mena produktov vzostupne.
SELECT 
    ProductID,
    ProductName,
    Price,
    CASE
        WHEN Price <= 300 THEN 'Very Low'
        WHEN Price > 300 AND Price <= 500 THEN 'Low'
        WHEN Price > 500 AND Price <= 1000 THEN 'Medium'
        WHEN Price > 1000 AND Price <= 2000 THEN 'High'
        WHEN Price > 2000 THEN 'Very High'
    END AS 'Price category'
FROM 
    Products
GROUP BY 
    ProductID, 
    ProductName, 
    Price
ORDER BY 
    Price, 
    ProductName;

--NEPOVINNÁ ÚLOHA
--5. Pracujte s tabuľkou Customers. Použite vyhľadávajúci výraz CASE. Výraz CASE napíšte tak, aby ste použili booleovské výrazy:
--*ak je štát rovný USA alebo Kanade, potom výraz vypíše 'North America'
--*ak je štát rovný UK, potom výraz vypíše 'Europe'
--*inak výraz vypíše 'Others'
--Výraz CASE nazvite ako 'Location'. Zobrazte počet záznamov na základe ID zákazníka. Počet nazvite ako 'Customers'. Záznamy zatrieďte do skupín podľa štátu. Záznamy zoraďte podľa 'Location'.
SELECT 
    State,
    CASE
        WHEN State IN ('USA', 'Canada') THEN 'North America'
        WHEN State = 'UK' THEN 'Europe'
        ELSE 'Others'
    END AS 'Location',
    COUNT(CustomerID) AS 'Customers'
FROM 
    Customers
GROUP BY 
    State 
ORDER BY 
    'Location';


--6. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--7. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--8. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.
--