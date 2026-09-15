--Databáza s názvom: vaše meno + priezvisko + projekt_DB (napr. Peter_Novak_projekt_DB) bude ďalej v zadaní nazývaná ako Projektová Databáza. Pracujte v Projektovej Databáze vytvorenej v predchádzajúcich lekciách.  
--
--Funkcia AVG()
--1. Pracujte s tabuľkou Products. Napíšte jeden SELECT, v ktorom zobrazíte body 1.1, 1.2, 1.3 a 1.4:
--1.1 priemernú cenu produktov (priemernú cenu nazvite ako 'Average Price')
--1.2 priemernú cenu produktov zaokrúhlenú na dve desatinné miesta (priemernú zaokrúhlenú cenu nazvite ako 'Rounded Average Price')
--1.3 priemer jedinečných cien produktov (priemer jedinečných cien nazvite ako 'Distinct Average Price')
--1.4 priemer jedinečných cien produktov zaokrúhlený na dve desatinné miesta (zaokrúhlený priemer jedinečných cien nazvite ako 'Rounded Distinct Average Price').
--Poznámka: body 1.1, 1.2, 1.3 a 1.4 budú súčasťou jedného SELECT-u.
SELECT 
    AVG(Price) AS 'Average Price', -- 1.1 Priemerná cena produktov
    ROUND(AVG(Price), 2) AS 'Rounded Average Price', -- 1.2 Priemerná cena produktov zaokrúhlená na dve desatinné miesta
    AVG(DISTINCT Price) AS 'Distinct Average Price', -- 1.3 Priemer jedinečných cien produktov
    ROUND(AVG(DISTINCT Price), 2) AS 'Rounded Distinct Average Price' -- 1.4 Priemer jedinečných cien produktov zaokrúhlený na dve desatinné miesta
FROM 
    Products;

--Funkcia COUNT()
--2. Pracujte s tabuľkou Customers. Napíšte jeden SELECT, v ktorom zobrazíte body 2.1, 2.2 a 2.3:
--2.1 počet všetkých záznamov (počet nazvite ako 'All Counts')
--2.2 počet záznamov, kde stĺpec Phone neobsahuje NULL hodnoty (počet nazvite ako 'NOT NULL Counts')
--2.3 počet jedinečných záznamov stĺpca Phone (počet nazvite ako 'Distinct Counts')
--Poznámka: body 2.1, 2.2 a 2.3 budú súčasťou jedného SELECT-u.
SELECT 
    COUNT(*) AS 'All Counts', -- 2.1 Počet všetkých záznamov
    COUNT(Phone) AS 'NOT NULL Counts', -- 2.2 Počet záznamov, kde stĺpec Phone neobsahuje NULL hodnoty
    COUNT(DISTINCT Phone) AS 'Distinct Counts' -- 2.3 Počet jedinečných záznamov stĺpca Phone
FROM 
    Customers;

--Funkcia SUM()
--3. Pracujte s tabuľkou Products. Napíšte jeden SELECT, v ktorom zobrazíte body 3.1, 3.2 a 3.3:
--3.1 súčet všetkých hodnôt cien produktov (súčet nazvite ako 'SUM All Price')
--3.2 súčet jedinečných hodnôt cien produktov (súčet nazvite ako 'SUM Distinct Price')
--3.3 rozdiel medzi 'SUM All Price' a 'SUM Distinct Price' (tento rozdiel nazvite ako '(SUM All Price) - (SUM Distinct Price)')
--Poznámka: body 3.1, 3.2 a 3.3 budú súčasťou jedného SELECT-u.
SELECT 
    SUM(Price) AS 'SUM All Price', -- 3.1 Súčet všetkých hodnôt cien produktov
    SUM(DISTINCT Price) AS 'SUM Distinct Price', -- 3.2 Súčet jedinečných hodnôt cien produktov
    SUM(Price) - SUM(DISTINCT Price) AS '(SUM All Price) - (SUM Distinct Price)' -- 3.3 Rozdiel medzi 'SUM All Price' a 'SUM Distinct Price'
FROM 
    Products;

--Funkcie MIN() a MAX()
--4. Pracujte s tabuľkou Products. 
--4.1 Napíšte SELECT, v ktorom zobrazíte: ID kategórie, minimálnu cenu produktu (nazvite ju ako 'Min Price'), maximálnu cenu produktu (nazvite ju ako 'Max Price'), rozdiel medzi 'Max Price' a 'Min Price' (rozdiel nazvite ako 'Max - Min') a priemernú cenu produktov (nazvite ju ako 'Average Price'). Záznamy zatrieďte do skupín podľa ID kategórií.
SELECT 
    CategoryID, 
    MIN(Price) AS 'Min Price', 
    MAX(Price) AS 'Max Price', 
    MAX(Price) - MIN(Price) AS 'Max - Min', 
    AVG(Price) AS 'Average Price'
FROM 
    Products
GROUP BY 
    CategoryID;

--4.2 Napíšte SELECT, v ktorom zobrazíte: prvé tri záznamy ID kategórie a minimálnej ceny produktu (nazvite ju ako 'Min Price'). Záznamy zatrieďte do skupín podľa ID kategórií. Záznamy zoraďte podľa 'Min Price' vzostupne.
SELECT TOP (3) 
    CategoryID,   
    MIN(Price) AS 'Min Price'
FROM 
    Products
GROUP BY
	CategoryID
ORDER BY 
    'Min Price';

--4.3 Napíšte SELECT, v ktorom zobrazíte: prvé tri záznamy ID kategórie a maximálnej ceny produktu (nazvite ju ako 'Max Price'). Záznamy zatrieďte do skupín podľa ID kategórií. Záznamy zoraďte podľa 'Max Price' zostupne.
SELECT TOP (3) 
    CategoryID,   
    MAX(Price) AS 'Max Price'
FROM 
    Products
GROUP BY
	CategoryID
ORDER BY 
    'Max Price' DESC;

--4.4 Napíšte SELECT, v ktorom zobrazíte: prvé tri záznamy ID kategórie a priemernej ceny produktu, ktorú zaokrúhlite na dve desatinné miesta (nazvite ju ako 'Average Price'). Záznamy zatrieďte do skupín podľa ID kategórií. Záznamy zoraďte podľa 'Average Price' zostupne.
--Poznámka: ku každému bodu (4.1 až 4.4) napíšte samostatný SELECT.
SELECT TOP (3) 
    CategoryID,   
    ROUND(AVG(Price), 2) AS 'Average Price'
FROM 
    Products
GROUP BY
	CategoryID
ORDER BY 
    'Average Price' DESC;

--5. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--6. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--7. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.