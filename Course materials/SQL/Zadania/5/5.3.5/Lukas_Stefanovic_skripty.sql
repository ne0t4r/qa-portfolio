--1. V rámci tabuľky Customers vykonajte tieto SELECTY:
--1.1 vyberte všetky stĺpce a všetky záznamy použitím *
SELECT * FROM Customers;
--1.2 vyberte meno a priezvisko ľudí, ktorí žijú v Kanade 
SELECT CustomerFirstName, CustomerLastName FROM Customers WHERE State = 'Canada';
--1.3 vyberte meno, priezvisko, mesto a štát všetkých záznamov. Záznamy zoraďte vzostupne podľa štátu a podľa mesta
SELECT CustomerFirstName, CustomerLastName, City, State FROM Customers ORDER BY State ASC, City ASC;
--1.4 vyberte ID, meno, priezvisko a email zákazníkov, ktorých telefónne číslo je neznáme 
SELECT CustomerID, CustomerFirstName, CustomerLastName, Email FROM Customers WHERE Phone IS NULL;
--1.5 vyberte štát, meno, priezvisko a mesto osoby, ktorej meno je Hannah
SELECT State, CustomerFirstName, CustomerLastName, City FROM Customers WHERE CustomerFirstName = 'Hannah';
--1.6 vyberte štát tých záznamov, ktorých telefón nemá neznámu hodnotu a zároveň zákaznícke ID je väčšie ako 40. Vybraté záznamy zoskupte do skupín podľa štátu.
SELECT State FROM Customers WHERE Phone IS NOT NULL AND CustomerID > 40 GROUP BY State;


--2. V rámci tabuľky Employees vykonajte tieto SELECTY:
--2.1 vyberte všetky stĺpce zamestnancov, ktorí pracujú v obchode s ID 2
SELECT * FROM Employees WHERE StoreID = 2;
--2.2 vyberte meno a priezvisko ženských zamestnancov, ktorí pracujú v obchode s ID 3 
SELECT EmployeeFirstName, EmployeeLastName FROM Employees WHERE Gender = 'female' AND StoreID = 3;
--2.3 vyberte ID, meno a priezvisko zamestnancov s párnym zamestnaneckým ID číslom zoradených zostupne podľa zamestnaneckého ID
SELECT EmployeeID, EmployeeFirstName, EmployeeLastName FROM Employees WHERE EmployeeID IN (2,4,6,8,10) ORDER BY EmployeeID DESC;
--2.4 vyberte meno a priezvisko mužských zamestnancov, ktorých priezvisko je Inglis
SELECT EmployeeFirstName, EmployeeLastName FROM Employees WHERE GENDER = 'male' AND EmployeeLastName = 'Inglis';
--2.5 vyberte unikátne záznamy stĺpca Gender
SELECT DISTINCT Gender FROM Employees;

--3. V rámci tabuľky Products vykonajte tieto SELECTY:
--3.1 vyberte stĺpec ceny a za ním všetky stĺpce (použite znak *) tých záznamov, ktorých kategória má číslo 7 a zoraďte ich zostupne podľa ceny (ak SSMS vypisuje chybu, ktorú neviete odstrániť, tak napíšte SELECT bez zoradenia)
SELECT Price, * FROM Products WHERE CategoryID = 7 ORDER BY Price DESC;
SELECT Price, * FROM Products WHERE CategoryID = 7;
--3.2 vyberte všetky stĺpce tých záznamov, ktorých kategória má číslo 1 a cena je menšia ako 1000. Záznamy zoraďte zostupne podľa ceny
SELECT * FROM Products WHERE CategoryID = 1 AND Price < 1000 ORDER BY Price DESC;
--3.3 vyberte ID produktu, názov produktu a cenu tých produktov, ktorých cena je medzi 1000 a 2000. Záznamy zoraďte defaultne podľa ceny
SELECT ProductID, ProductName, Price FROM Products WHERE Price BETWEEN 1000 AND 2000 ORDER BY Price;
--3.4 vyberte ID produktu a názov produktu, ktorých kategória je buď 4 alebo 6 (použite operátor IN). Záznamy zoraďte zostupne podľa názvu produktu
SELECT ProductID, ProductName FROM Products WHERE CategoryID IN (4,6) ORDER BY ProductName DESC;
