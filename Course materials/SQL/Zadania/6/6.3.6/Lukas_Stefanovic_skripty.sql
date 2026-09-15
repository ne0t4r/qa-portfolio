--1. V rámci tabuľky Customers vykonajte tieto SELECT-y. Ku každému bodu 1.1 až 1.10 napíšte jeden SELECT:
--1.1 zobrazte záznamy, kde zákazník pochádza z UK a má meno Michael
SELECT * FROM Customers WHERE State = 'UK' AND CustomerFirstName = 'Michael';

--1.2 zobrazte záznamy, kde zákazník pochádza buď z Nového Zélandu alebo Kanady, záznamy zoraďte podľa štátu vzostupne
SELECT * FROM Customers WHERE State = 'New Zealand' OR State = 'Canada' ORDER BY State;
--1.3 zobrazte meno, telefón a štát zákazníkov, ktorých meno nie je Alysia, Diana, Tony, Raymond, Irving a Jule, telefón má neznámu hodnotu a zákazníci pochádzajú z USA
SELECT CustomerFirstName, Phone FROM Customers WHERE CustomerFirstName NOT IN ('Alysia', 'Diana', 'Tony', 'Raymond', 'Irving', 'Jule') AND Phone IS NULL AND State = 'USA';

--1.4 zobrazte meno, priezvisko a mesto zákazníkov, ktorí pochádzajú z Mount Vernon, Richardson alebo zo Spring Valley (použite viaceré operátory OR). Záznamy zoraďte vzostupne podľa mesta 
SELECT CustomerFirstName, CustomerLastName, City FROM Customers WHERE City = 'Mount Vernon' OR City = 'Richardson' OR City = 'Spring Valley' ORDER BY City;

--1.5 zobrazte meno, priezvisko, mesto zákazníkov, ktorí pochádzajú z Mount Vernon, Richardson alebo zo Spring Valley (použite operátor IN). Záznamy zoraďte vzostupne podľa mesta 
SELECT CustomerFirstName, CustomerLastName, City FROM Customers WHERE City IN ('Mount Vernon','Richardson','Spring Valley') ORDER BY City;

--1.6 zobrazte ID, priezvisko, štát a email zákazníkov, ktorých ID je od 17 do 47 vrátane a pochádzajú z Kanady (použite operátor BETWEEN)
SELECT CustomerID, CustomerLastName, State, Email FROM Customers WHERE CustomerID BETWEEN 17 AND 47 AND State = 'Canada';

--1.7 zobrazte ID, priezvisko, štát a email zákazníkov, ktorých ID je od 17 do 47 vrátane a pochádzajú z Kanady (použite logické a porovnávajúce operátory. Operátor BETWEEN nie je povolený!)
SELECT CustomerID, CustomerLastName, State, Email FROM Customers WHERE CustomerID >= 17 AND CustomerID <= 47 AND State = 'Canada';

--1.8 zobrazte meno zákazníkov, ktorých začiatočné písmeno mena sa nenachádza v intervale od "F" do "T" (použite operátor NOT BETWEEN)
SELECT CustomerFirstName FROM Customers WHERE CustomerFirstName NOT BETWEEN 'F' AND 'U';

--1.9 zobrazte meno zákazníkov, ktorých začiatočné písmeno mena sa nenachádza v intervale od "F" do "T" (použite logické a porovnávajúce operátory. Operátor NOT BETWEEN nie je povolený!)
SELECT CustomerFirstName FROM Customers WHERE CustomerFirstName <= 'F' OR CustomerFirstName >= 'U';

--1.10 zobrazte ID, mesto a štát, tých zákazníkov, ktorých mesto nie je Santa Clara ani Santa Monica a zároveň štát nie je USA ani UK alebo ktorých ID je 50
SELECT CustomerID, City, State FROM Customers WHERE (NOT City = 'Santa Clara' AND NOT City = 'Santa Monica' AND NOT State = 'USA' AND NOT State = 'UK') OR CustomerID = 50;

--2. V rámci tabuľky Customers vykonajte tieto SELECT-y. Ku každému bodu 2.1 až 2.9 napíšte jeden SELECT:
--2.1 zobrazte stĺpec mesto, v ktorom mesto začína na "F"
SELECT City FROM Customers WHERE City LIKE 'F%';

--2.2 zobrazte stĺpec mesto, v ktorom mesto končí na "y"
SELECT City FROM Customers WHERE City LIKE '%Y';

--2.3 zobrazte stĺpec priezvisko, v ktorom sú jedinečné priezviská končiace na "son". Záznamy zoraďte podľa priezviska vzostupne.
SELECT CustomerLastName FROM Customers WHERE CustomerLastName LIKE '%son' ORDER BY CustomerLastName;

--2.4 zobrazte stĺpec priezvisko, v ktorom sú všetky priezviská štvorpísmenové. Záznamy zoraďte podľa priezviska vzostupne.
SELECT CustomerLastName FROM Customers WHERE CustomerLastName LIKE '____' ORDER BY CustomerLastName;

--2.5 zobrazte stĺpec priezvisko, v ktorom má priezvisko ako druhé písmeno "o". Záznamy zoraďte podľa priezviska vzostupne.
SELECT CustomerLastName FROM Customers WHERE CustomerLastName LIKE '_o%' ORDER BY CustomerLastName;

--2.6 zobrazte stĺpec ID (s dočasným názvom "ID"), zobrazte stĺpce meno a priezvisko ako jeden stĺpec s dočasným názvom "Fullname", zobrazte stĺpec mesto, kde ID zákazníka je od 20 do 29 (je zakázané použiť: logické operátory, operátor BETWEEN a IN. Použite zástupné znaky!) a mesto začína na písmeno v intervale od "N" po "Z" (je zakázané použiť: logické operátory, operátor BETWEEN a IN. Použite zástupné znaky!). Záznamy zoraďte podľa ID a mesta vzostupne
SELECT CustomerID AS ID, CustomerFirstName + ' ' + CustomerLastName AS Fullname, City FROM Customers WHERE CustomerID LIKE '2_' AND  City LIKE 'N%' OR City LIKE 'O%' OR City LIKE 'P%' OR City LIKE 'Q%' OR City LIKE 'R%' OR City LIKE 'S%' OR City LIKE 'T%' OR City LIKE 'U%' OR City LIKE 'V%' OR City LIKE 'W%' OR City LIKE 'X%' OR City LIKE 'Y%' OR City LIKE 'Z%' ORDER BY ID ASC, City ASC;

--2.7 zobrazte stĺpec meno, priezvisko a mesto tých zákazníkov, ktorých:
--*meno nezačína na "A", "F", "L", "N", "T" a ani na "Z" (je zakázané použiť operátor NOT a !=. Použite zástupné znaky!),
--*priezvisko končí na "son" alebo "sen" (zapíšte to ako jednu podmienku pomocou zástupných znakov), 
--*mesto začína písmeno v intervale od "O" po "T" (je zakázané použiť operátor BETWEEN, IN, NOT a !=. Použite zástupné znaky!),
--Záznamy zoraďte podľa mena a mesta vzostupne.
SELECT CustomerFirstName, CustomerLastName, City FROM Customers WHERE (CustomerFirstName LIKE '[B-E]%' OR CustomerFirstName LIKE '[G-K]%' OR CustomerFirstName LIKE '[M]%' OR CustomerFirstName LIKE '[P-S]%' OR CustomerFirstName LIKE '[U-Y]%') AND (CustomerLastName LIKE '%son' OR CustomerLastName LIKE '%sen') AND (
City LIKE 'O%' OR City LIKE 'P%' OR City LIKE 'Q%' OR City LIKE 'R%' OR City LIKE 'S%' OR City LIKE 'T%') ORDER BY CustomerFirstName ASC, City ASC;


--2.8 zobrazte stĺpec ID (s dočasným názvom "ID"), zobrazte stĺpec meno (s dočasným názvom "Name"), zobrazte stĺpec priezvisko (s dočasným názvom "Surname"), zobrazte ulicu, kde:
--*ulica začína na číslo 5 a končí na "St."
--*ID je jednočíselná hodnota (použite zástupné znaky!)
SELECT CustomerID AS ID, CustomerFirstName AS Name, CustomerLastName AS Surname, Street FROM Customers WHERE Street LIKE '5%St.'AND CustomerID LIKE '_';

--2.9 zobrazte stĺpec ID (s dočasným názvom "ID"), zobrazte stĺpec meno (s dočasným názvom "Name"), zobrazte stĺpec priezvisko (s dočasným názvom "Surname"), zobrazte ulicu, smerovacie číslo (s dočasným názvom "Postal Code"), kde:
--*smerovacie číslo začína na číslicu 7, druhá číslica je buď 5, 6, 7 alebo 8, štvrtá číslica je 1
--*názov ulice nezačína na číslicu 7, 8 alebo 9
--Záznamy zoraďte podľa smerovacieho čísla vzostupne.
SELECT CustomerID AS ID, CustomerFirstName AS Name, CustomerLastName AS Surname, Street, ZipCode AS "Postal Code" FROM Customers WHERE ZipCode LIKE '7[5678]_1%' AND Street NOT LIKE '7%' AND Street NOT LIKE '8%' AND Street NOT LIKE '9%'ORDER BY ZipCode;

--K bodu 3.1 napíš jeden SELECT:
--
--3. V rámci tabuľky Comments vykonajte tieto SELECT-y:
--3.1 zobrazte stĺpec Content a zobrazte záznam, kde sa spomína zľava "30%"
SELECT Content FROM Comments WHERE Content LIKE '%30\%%' ESCAPE '\';
