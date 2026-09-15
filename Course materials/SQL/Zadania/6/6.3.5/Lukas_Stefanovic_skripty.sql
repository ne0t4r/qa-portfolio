--1. V rámci tabuľky Customers vykonajte tieto SELECT-y. Ku každému bodu 1.1 až 1.5 napíšte jeden SELECT:
--1.1 pomocou klauzuly TOP(N) zobrazte spodných 10 záznamov (CustomerID 50 až CustomerID 41) 
SELECT TOP 10 * FROM Customers WHERE CustomerID BETWEEN 41 AND 50 ORDER BY CustomerID DESC;

--1.2 zobrazte 7% vrchných záznamov
SELECT TOP 7 PERCENT * FROM Customers;

--1.3 zobrazte 15% spodných záznamov
SELECT TOP 15 PERCENT * FROM Customers ORDER BY CustomerID DESC;

--1.4 pomocou klauzuly TOP(N) zobrazte jeden vrchný záznam zákazníka z Nového Zélandu
SELECT TOP 1 * FROM Customers WHERE State = 'New Zealand';

--1.5 pomocou klauzuly TOP(N) WITH TIES zobrazte jeden vrchný záznam zákazníka z Nového Zélandu
SELECT TOP 1 WITH TIES * FROM Customers WHERE State = 'New Zealand' ORDER BY CustomerID; 


--2. V rámci tabuľky Customers vykonajte tieto SELECT-y. Ku každému bodu 2.1 až 2.5 napíšte jeden SELECT:
--2.1 zobrazte ako jeden stĺpec spojenie dvoch stĺpcov: CustomerFirstName a CustomerLastName. Zjednotený stĺpec bude mať alias s názvom: customer_name 
SELECT CustomerFirstName + ' ' + CustomerLastName AS customer_name FROM Customers ;

--2.2 zobrazte nielen CustomerFirstName (použite ako alias názov: Name) a CustomerLastName (použite ako alias názov: Surname) zákazníka, ale zobrazte tiež ako jeden stĺpec spojenie štyroch stĺpcov: Street, City, State a ZipCode. Zjednotený stĺpec bude mať alias s názvom: "Customer Address"
SELECT CustomerFirstName AS Name, CustomerLastName AS Surname, Street + ', ' + City + ', ' + State + ', ' + ZipCode AS "Customer Address" FROM Customers;

--2.3 zobrazte CustomerFirstName ako alias "Customer Name", zobrazte CustomerLastName ako alias "Customer Surname", zobrazte Phone ako alias "Phone Number" a zoraďte záznamy podľa Customer Name vzostupne
SELECT CustomerFirstName AS "Customer Name", CustomerLastName AS "Customer Surname", Phone AS "Phone Number" FROM Customers ORDER BY 'Customer Name';

--2.4 vyberte stĺpec CustomerFirstName ako alias s názvom "M-names", a zobrazte iba mená začínajúce na písmeno "M" (použite príslušný operátor a zástupné znaky)
SELECT CustomerFirstName AS "M-names" FROM Customers WHERE CustomerFirstName LIKE 'M%';
 
--2.5 vyberte stĺpec mesto a štát. Stĺpec mesto zobrazte ako alias s názvom "Group1". Stĺpec štát zobrazte ako alias s názvom "Group2". Zoskupte záznamy podľa mesta a štátu. Zoraďte ich podľa štátu vzostupne.
SELECT City AS "Group1", State AS "Group2" FROM Customers GROUP BY City, State ORDER BY Group2;
