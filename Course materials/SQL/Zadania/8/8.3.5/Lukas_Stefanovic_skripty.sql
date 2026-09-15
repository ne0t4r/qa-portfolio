--1. Pracujte s tabuľkou Orders. Napíšte jeden SELECT, v ktorom zobrazíte:
--1.1 stĺpec dátumu objednávky
--1.2 dátum vyskladaný pomocou funkcií DAY(), MONTH() a YEAR() z dátumu objednávky. Tento stĺpec nazvite ako 'Date from parts'. (Vysvetlenie: napr. ak dátum objednávky je 2022-11-02, vyskladaný dátum bude 2.11.2022).
--1.3 rok z dátumu objednávky. Tento stĺpec nazvite ako 'Year'
--1.4 mesiac z dátumu objednávky. Tento stĺpec nazvite ako 'Month'
--1.5 deň z dátumu objednávky. Tento stĺpec nazvite ako 'Day'

--1.6 pomocou funkcií CONVERT(), alebo prípadne CAST(), sformátujte dátum objednávky pomocou štýlu (style) od 0 po 131. Každý formát nazvite podľa jeho štandardu (Standard). Ak názov štandardu chýba, nazvite formát podľa štýlu. (Vysvetlenie: napr. style = 5 nazvite ako 'Italian', style = 105 nazvite ako 'Italian', style = 6 nazvite ako 'Style 6', style = 106 nazvite ako 'Style 106' atď).
--1.7 v tomto SELECT-e budete musieť použiť aj funkcie z minulých lekcií
--Poznámka: body 1.1, 1.2, 1.3, 1.4, 1.5, 1.6 a 1.7 budú súčasťou jedného SELECT-u. V tomto SELECT-e bude 43 stĺpcov. 
SELECT
    OrderDate,
    CAST(DAY(OrderDate) AS VARCHAR) + '.' + 
    CAST(MONTH(OrderDate) AS VARCHAR) + '.' + 
    CAST(YEAR(OrderDate) AS VARCHAR) AS 'Date from parts',
    YEAR(OrderDate) AS 'Year',
    MONTH(OrderDate) AS 'Month',
    DAY(OrderDate) AS 'Day',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 0) AS 'Default',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 1) AS 'USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 2) AS 'ANSI',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 3) AS 'British/French',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 4) AS 'German',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 5) AS 'Italian',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 6) AS 'Style 6',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 7) AS 'Style 7',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 8) AS 'Style 8',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 9) AS 'Style 9',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 10) AS 'USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 11) AS 'Style 11',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 12) AS 'ISO',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 13) AS 'Europe',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 14) AS 'Style 14',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 20) AS 'ODBC',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 21) AS 'ODBC',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 22) AS 'Style 22',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 23) AS 'ISO8601',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 24) AS 'Style 24',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 25) AS 'Style 25',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 100) AS 'Default USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 101) AS 'USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 102) AS 'ANSI',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 103) AS 'British/French',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 104) AS 'German',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 105) AS 'Italian',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 106) AS 'Style 106',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 107) AS 'Style 107',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 108) AS 'Style 108',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 109) AS 'Default USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 110) AS 'USA',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 111) AS 'Japan',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 112) AS 'ISO',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 113) AS 'Europe',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 114) AS 'Style 114',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 120) AS 'ODBC',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 121) AS 'ODBC',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 126) AS 'ISO8601',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 127) AS 'ISO8601',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 130) AS 'Hijri',
    CONVERT(VARCHAR, CAST(OrderDate AS DATETIME), 131) AS 'Hijri'
FROM Orders
WHERE OrderDate IS NOT NULL;

--2. Pracujte s tabuľkou Orders. Napíšte jeden SELECT, v ktorom zobrazíte:
--2.1 dátum objednávky vo formáte style = 104. Stĺpec nazvite ako 'Order Date'
--2.2 dátum objednávky vo formáte style = 104 a posuňte ho o 7 dní dopredu. Stĺpec nazvite ako 'Completed Date'
--2.3 dátum objednávky vo formáte style = 104 a posuňte ho o 9 dní dopredu. Stĺpec nazvite ako 'Shipped Date'
--2.4 zobrazte pomocou funkcie aktuálnu časovú pečiatku. Stĺpec nazvite ako 'Now'
--2.5 použite výraz CASE a nazvite ho ako 'Status': 
--*ak je dátum objednávky menší alebo rovný aktuálnej časovej pečiatke, potom výraz vypíše 'Shipped'
--*ak je dátum objednávky väčší ako aktuálna časová pečiatka, potom výraz vypíše 'Not completed yet'
--2.6 vyrátajte počet dní medzi dátumom objednávky a aktuálnou časovou pečiatkou. Okrem počtu dní nech stĺpec obsahuje aj slovný reťazec (tzv. string): 'days have passed since the order' (napr. '28 days have passed since the order'). Stĺpec nazvite ako 'Days since the order'
--2.7 výsledky zoraďte podľa dátumu objednávky od najnovšieho po najstarší
--2.8 v SELECT-e použite všetky tri funkcie na získanie aktuálnej časovej pečiatky
--2.9 v tomto SELECT-e budete musieť použiť aj funkcie z minulých lekcií
--Poznámka: body 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8 a 2.9 budú súčasťou jedného SELECT-u.  V tomto SELECT-e bude 6 stĺpcov.
SELECT
    CONVERT(VARCHAR, OrderDate, 104) AS 'Order Date',
	CONVERT(VARCHAR, DATEADD(DAY, 7, OrderDate), 104) AS 'Completed Date',
	CONVERT(VARCHAR, DATEADD(DAY, 9, OrderDate), 104) AS 'Shipped Date',
	GETDATE() AS 'Now',
	CASE
		WHEN OrderDate <= SYSDATETIME() THEN 'Shipped'
		WHEN OrderDate > SYSDATETIME() THEN 'Not completed yet'
	END AS 'Status',
	CAST(DATEDIFF(DAY, OrderDate, CURRENT_TIMESTAMP) AS VARCHAR) + ' days have passed since the order' AS 'Days since the order'
FROM Orders
WHERE OrderDate IS NOT NULL
ORDER BY OrderDate DESC;

--3. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--4. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--5. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.