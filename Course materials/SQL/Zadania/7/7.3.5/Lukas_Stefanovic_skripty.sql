--Funkcia CHAR()
--1. Vyskladajte: 
--1.1 vaše meno a priezvisko pomocou funkcie CHAR() tak, aby neobsahovalo diakritiku a bolo napísané iba veľkými písmenami. Meno od priezviska oddeľte novým riadkom (použite line feed)
SELECT 
    CHAR(76) + CHAR(85) + CHAR(75) + CHAR(65) + CHAR(83) +
    CHAR(10) +
    CHAR(83) + CHAR(84) + CHAR(69) + CHAR(70) + CHAR(65) + CHAR(78) + CHAR(79) + CHAR(86) + CHAR(73) + CHAR(67) AS 'Meno Priezvisko';

--1.2 vaše meno a priezvisko pomocou funkcie CHAR() tak, aby neobsahovalo diakritiku a prvé písmeno mena a priezviska bude veľkými písmenami, zvyšok bude malými písmenami. Meno od priezviska oddeľte novým riadkom (použite carriage return)
SELECT 
    CHAR(76) + CHAR(117) + CHAR(107) + CHAR(97) + CHAR(115) +
    CHAR(13) +
    CHAR(83) + CHAR(116) + CHAR(101) + CHAR(102) + CHAR(97) + CHAR(110) + CHAR(111) + CHAR(118) + CHAR(105) + CHAR(99) AS 'Meno Priezvisko';

--1.3 vetu podľa nasledovného vzoru:
--Môj email:    "vašemeno.tvojepriezvisko@metis.academy" 
--(napr. Môj email:    "jozef.novak@metis.academy")
--Poznámka: Prvé slovo od druhého oddeľuje medzera. Medzi dvojbodkou a prvými úvodzovkami je použitý horizontálny tabulátor. Následne v úvodzovkách uveďte svoj študentský email.
SELECT 
    CHAR(77) + CHAR(244) + CHAR(106) + CHAR(32) + CHAR(101) + CHAR(109) + CHAR(97) + CHAR(105) + CHAR(108) + CHAR(58) +
    CHAR(9) + 
    CHAR(34) + 
    CHAR(108) + CHAR(117) + CHAR(107) + CHAR(97) + CHAR(115) + CHAR(46) + CHAR(115) + CHAR(116) + CHAR(101) + CHAR(102) + CHAR(97) + CHAR(110) + CHAR(111) + CHAR(118) + CHAR(105) + CHAR(99) + 
    CHAR(64) + 
    CHAR(109) + CHAR(101) + CHAR(116) + CHAR(105) + CHAR(115) + CHAR(46) + CHAR(97) + CHAR(99) + CHAR(97) + CHAR(100) + CHAR(101) + CHAR(109) + CHAR(121) + 
    CHAR(34);

--Poznámka: pre každý bod 1.1, 1.2 a 1.3 napíšte samostatný SELECT.
--
--Funkcia CONCAT() a CONCAT_WS()
--2. Pracujte s tabuľkou Customers. Vyskladajte reťazec podľa vzoru (tento vzor aplikujte na všetky záznamy v tabuľke Customers):
--Customer Kellie Franco lives at 28 N. Gregory Court in Depew in the Canada
--	The phone of customer is: (916)381-6003 and email is: kellie.franco@yahoo.com
SELECT 
    CONCAT('Customer ', 
           CONCAT_WS(' ', CustomerFirstName, CustomerLastName), 
           ' lives at ', 
           Street, 
           ' in ', 
           City, 
           ' in the ', 
           State,
           CHAR(13), CHAR(10),
           CHAR(9), 'The phone of customer is: ', 
           Phone, 
           ' and email is: ', 
           Email) AS 'Customer Details'
FROM 
    Customers;

--2.1 Použite funkciu CONCAT(), aby ste dosiahli hore uvedený vzor. Tento vzor aplikujte na všetky záznamy v tabuľke Customers. Použite doslovné reťazce, názvy stĺpcov a znaky z funkcie CHAR() - hlavne medzery. Druhú vetu dajte do nového riadka (použite carriage return) a odddeľte horizontálnym tabulátorom.
SELECT 
    CONCAT(
        -- 'Customer '
        CHAR(67), CHAR(117), CHAR(115), CHAR(116), CHAR(111), CHAR(109), CHAR(101), CHAR(114), CHAR(32),
        -- Meno a priezvisko
        CHAR(32), CustomerFirstName, CHAR(32), CustomerLastName,
        -- ' lives at '
        CHAR(32), CHAR(108), CHAR(105), CHAR(118), CHAR(101), CHAR(115), CHAR(32), CHAR(97), CHAR(116), CHAR(32),
        -- Adresa
        Street,
        -- ' in '
        CHAR(32), CHAR(105), CHAR(110), CHAR(32),
        -- Mesto
        City,
        -- ' in the '
        CHAR(32), CHAR(105), CHAR(110), CHAR(32), CHAR(116), CHAR(104), CHAR(101), CHAR(32),
        -- Krajina
        State,
        -- Nový riadok a horizontálny tabulátor
        CHAR(13), CHAR(9),
        -- 'The phone of customer is: '
        CHAR(84), CHAR(104), CHAR(101), CHAR(32), CHAR(112), CHAR(104), CHAR(111), CHAR(110), CHAR(101), CHAR(32), CHAR(111), CHAR(102), CHAR(32), CHAR(99), CHAR(117), CHAR(115), CHAR(116), CHAR(111), CHAR(109), CHAR(101), CHAR(114), CHAR(32), CHAR(105), CHAR(115), CHAR(58), CHAR(32),
        -- Telefónne číslo
        Phone,
        -- ' and email is: '
        CHAR(32), CHAR(97), CHAR(110), CHAR(100), CHAR(32), CHAR(101), CHAR(109), CHAR(97), CHAR(105), CHAR(108), CHAR(32), CHAR(105), CHAR(115), CHAR(58), CHAR(32),
        -- Emailová adresa
        Email
    ) AS 'Customer Details'
FROM 
    Customers;

--2.2 Použite funkciu CONCAT_WS() tak, aby ste dosiahli presne rovnaký výsledok ako v bode 2.1 tejto úlohy.
SELECT 
    CONCAT_WS(
        '',
        -- 'Customer '
        CHAR(67), CHAR(117), CHAR(115), CHAR(116), CHAR(111), CHAR(109), CHAR(101), CHAR(114), CHAR(32),
        -- Meno a priezvisko
        CustomerFirstName, CHAR(32), CustomerLastName,
        -- ' lives at '
        CHAR(32), CHAR(108), CHAR(105), CHAR(118), CHAR(101), CHAR(115), CHAR(32), CHAR(97), CHAR(116), CHAR(32),
        -- Adresa
        Street,
        -- ' in '
        CHAR(32), CHAR(105), CHAR(110), CHAR(32),
        -- Mesto
        City,
        -- ' in the '
        CHAR(32), CHAR(105), CHAR(110), CHAR(32), CHAR(116), CHAR(104), CHAR(101), CHAR(32),
        -- Krajina
        State,
        -- Nový riadok a horizontálny tabulátor
        CHAR(13), CHAR(10),
        CHAR(9),
        -- 'The phone of customer is: '
        CHAR(84), CHAR(104), CHAR(101), CHAR(32), CHAR(112), CHAR(104), CHAR(111), CHAR(110), CHAR(101), CHAR(32), CHAR(111), CHAR(102), CHAR(32), CHAR(99), CHAR(117), CHAR(115), CHAR(116), CHAR(111), CHAR(109), CHAR(101), CHAR(114), CHAR(32), CHAR(105), CHAR(115), CHAR(58), CHAR(32),
        -- Telefónne číslo
        Phone,
        -- ' and email is: '
        CHAR(32), CHAR(97), CHAR(110), CHAR(100), CHAR(32), CHAR(101), CHAR(109), CHAR(97), CHAR(105), CHAR(108), CHAR(32), CHAR(105), CHAR(115), CHAR(58), CHAR(32),
        -- Emailová adresa
        Email
    ) AS 'Customer Details'
FROM 
    Customers;

--Poznámka: pre každý bod 2.1 a 2.2 napíšte samostatný SELECT.

--Funkcia LEN() a DATALENGTH()
--3. Pracujte s tabuľkou Customers.
--3.1 Zobrazte stĺpec mesto a dĺžku reťazcov v stĺpci mesto (dĺžku pomenujte ako 'City Length') tých záznamov, ktorých 'City Length' je menší ako 10. Použite klauzulu GROUP BY a HAVING. Záznamy zoraďte podľa 'City Length' a podľa mesta.
SELECT 
    City, 
    LEN(City) AS 'City Length'
FROM 
    Customers
GROUP BY 
    City
HAVING 
    LEN(City) < 10
ORDER BY 
    'City Length', 
    City;


--3.2 Pomocou funkcie CONCAT() spojte stĺpce ulice a mesta (ulica bude oddelená od mesta čiarkou a medzerou - použite funkciu CHAR()) a tento spojený stĺpec pomenujte názvom 'Address'. Pomocou funkcie LEN() zobrazte spoločný počet znakov stĺpca ulice a mesta (dĺžku pomenujte ako 'Address Length'). Pomocou funkcie DATALENGTH() zobrazte spoločný počet bajtov stĺpca ulice a mesta (dĺžku pomenujte ako 'Datalength'). Záznamy zoraďte podľa 'Address Length' zostupne.
--Poznámka: pre každý bod 3.1 a 3.2 napíšte samostatný SELECT.
SELECT 
    CONCAT(Street, CHAR(44), CHAR(32), City) AS Address, -- CHAR(44) je ',' a CHAR(32) je ' '
    LEN(CONCAT(Street, CHAR(44), CHAR(32), City)) AS 'Address Length',
    DATALENGTH(CONCAT(Street, CHAR(44), CHAR(32), City)) AS 'Datalength'
FROM 
    Customers
ORDER BY 
    'Address Length' DESC;

--Funkcia ROUND()
--4. Zaokrúhlite:
--4.1 číslo 1567456.48460480741684 na tri desatinné miesta
SELECT 
    ROUND(1567456.48460480741684, 3);

--4.2 číslo 1567456.48460480741684 na šesť desatinných miest
SELECT 
    ROUND(1567456.48460480741684, 6);

--4.3 číslo 1567456.48460480741684 na celé číslo
SELECT 
    ROUND(1567456.48460480741684, 0);

--4.4 číslo 1567456.48460480741684 na tisícky
SELECT 
    ROUND(1567456.48460480741684, -3);

--4.5 číslo 1567456.48460480741684 na milióny
SELECT 
    ROUND(1567456.48460480741684, -6);

--4.6 stĺpec Price v tabuľke Products na stovky (zaokrúhlenú cenu nazvite ako 'Rounded Price'). Zobrazte túto zaokrúhlenú cenu tých záznamov, ktorých zaokrúhlená cena sa nenachádza v intervale od 500 do 1500. Záznamy zoskupte do skupín podľa zaokrúhlenej ceny. Záznamy zoraďte vzostupne podľa zaokrúhlenej ceny.
SELECT 
    ROUND(Price, -2) AS 'Rounded Price'
FROM 
    Products
GROUP BY 
    ROUND(Price, -2)
HAVING 
    ROUND(Price, -2) < 500 OR ROUND(Price, -2) > 1500
ORDER BY 
    'Rounded Price';

--Poznámka: pre každý bod 4.1, 4.2, 4.3, 4.4, 4.5 a 4.6 napíšte samostatný SELECT.

--5. Všetky použité SELECT-y (príkazy/skripty) chronologicky napíšte a uložte do SQL súboru s názvom v tvare: vaše meno + priezvisko + skripty (napr. Peter_Novak_skripty.sql).
--
--6. Projektovú Databázu vyexportujte do súboru .bacpac s názvom v tvare: vaše meno + priezvisko + projekt_DB.bacpac (napr. Peter_Novak_projekt_DB.bacpac).
--
--7. SQL súbor so SELECT-ami a súbor .bacpac zozipujte do .zip súboru a odovzdajte do portálu Metis.
--