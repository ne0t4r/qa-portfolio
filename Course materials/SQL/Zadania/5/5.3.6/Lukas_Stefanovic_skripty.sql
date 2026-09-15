--1. V rámci tabuľky Orders vykonajte tieto SELECTY:
--1.1 vyberte všetky stĺpce tých záznamov, ktorých zákaznícke číslo je buď 1, 11, 22, 33 alebo 44 (použite operátor IN). Záznamy zoraďte zostupne podľa zákazníckeho čísla a zostupne podľa dátumu objednania
SELECT * FROM Orders WHERE CustomerID IN (1,11,22,33,44) ORDER BY CustomerID DESC, OrderDate DESC;
--1.2 vyberte všetky stĺpce tých objednávok, ktoré nevybavoval pracovník s ID = 1 a zároveň ani pracovník s ID = 8 (použite operátor "nerovná sa"). Objednávky zoraďte podľa zákazníckeho ID a podľa zamestnaneckého ID vzostupne
SELECT * FROM Orders WHERE EmployeeID != 1 AND EmployeeID != 8 ORDER BY CustomerID, EmployeeID;
--1.3 vyberte ID zákazníka, ID produktu, ID zamestnanca a dátum objednávky, pričom záznamy zoraďte zostupne podľa ID zákazníka, vzostupne podľa ID produktu, zostupne podľa zamestnaneckého ID a vzostupne podľa dátumu objednávky
SELECT CustomerID, ProductID, EmployeeID, OrderDate FROM Orders ORDER BY CustomerID DESC, ProductID ASC, EmployeeID DESC, OrderDate ASC;
--1.4 vyberte unikátne záznamy stĺpca dátumu objednávky. Záznamy zoraďte zostupne
SELECT DISTINCT OrderDate FROM Orders ORDER BY OrderDate DESC;
--1.5 vyberte všetky stĺpce záznamov, kde ID produktu sa nachádza v intervale od 20 vrátane do 50 vrátane (použite porovnávajúce operátory. Operátor BETWEEN nepoužívajte!)
SELECT * FROM Orders WHERE ProductID >= 20 AND ProductID <= 50;
--1.6 vyberte všetky stĺpce záznamov, kde ID produktu sa nachádza mimo intervalu od 20 do 50. Hodnoty 20 a 50 do výberu nezahŕňajte (použite porovnávajúce operátory. Operátor BETWEEN nepoužívajte!)
SELECT * FROM Orders WHERE ProductID < 20 OR ProductID > 50;
--1.7 vyberte všetky stĺpce záznamov, kde ID produktu sa nachádza v intervale od 10  vrátane do 15 vrátane alebo od 50 vrátane do 60 vrátane (použite porovnávajúce operátory. Operátor BETWEEN nepoužívajte!)
SELECT * FROM Orders WHERE (ProductID >= 10 AND ProductID <=15) OR (ProductID >= 50 AND ProductID <=60);


--2. V rámci tabuľky Categories vykonajte tieto SELECTY:
--2.1 vyberte všetky stĺpce záznamov, ktorých názov kategórie začína na písmeno od A do L (vrátane týchto písmen)
SELECT * FROM Categories WHERE CategoryName >= 'A' AND CategoryName <= 'M';
--2.2 vyberte všetky stĺpce záznamov, ktorých názov kategórie začína na písmeno od L do Z (vrátane týchto písmen)
SELECT * FROM Categories WHERE CategoryName >= 'L' AND CategoryName <= 'Z';
--2.3 vyberte všetky stĺpce záznamov, kde ID kategórie je nepárne číslo (použite operátor "nerovná sa"). Záznamy zoraďte defaultne podľa ID kategórie.
SELECT * FROM Categories WHERE CategoryID != 2 AND CategoryID != 4 AND CategoryID != 6 AND CategoryID != 7 ORDER BY CategoryID;