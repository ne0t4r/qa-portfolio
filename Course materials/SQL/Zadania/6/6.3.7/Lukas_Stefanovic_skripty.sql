--1. Pomocou syntaxe vytvorte unikátny index. Unikátny index bude mať názov: ui_ft_comments. Unikátny index vytvorte na stĺpci CommentID.
CREATE UNIQUE INDEX ui_ft_comments ON Comments (CommentID);

--2. Pomocou syntaxe vytvorte full-textový katalóg s názvom: full_text_projekt_catalog
CREATE FULLTEXT CATALOG full_text_projekt_catalog;

--3. Pomocou syntaxe vytvorte full-textový index v rámci tabuľky Comments na stĺpci Content. Ako číslo "lcid" uveďte číslo pre angličtinu.
CREATE FULLTEXT INDEX ON [Lukas_Stefanovic_projekt_DB].[dbo].[Comments] (Content LANGUAGE 1033) KEY INDEX ui_ft_comments ON full_text_projekt_catalog;


--4. Pomocou funkcie FREETEXT(), CONTAINS() a pomocou operátora LIKE  vyhľadajte tieto slová:
--4.1 product
-- Počet záznamov vyhľadaných pomocou FREETEXT(): X
SELECT Content FROM Comments WHERE FREETEXT(Content, 'product');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'product');

SELECT Content FROM Comments WHERE Content LIKE 'product';

--4.2 discount
SELECT Content FROM Comments WHERE FREETEXT(Content, 'discount');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'discount');

SELECT Content FROM Comments WHERE Content LIKE 'discount';
--4.3 ship
SELECT Content FROM Comments WHERE FREETEXT(Content, 'ship');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'ship');

SELECT Content FROM Comments WHERE Content LIKE 'ship';

--4.4 shop
SELECT Content FROM Comments WHERE FREETEXT(Content, 'shop');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'shop');

SELECT Content FROM Comments WHERE Content LIKE 'shop';

--4.5 orders
SELECT Content FROM Comments WHERE FREETEXT(Content, 'orders');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'orders');

SELECT Content FROM Comments WHERE Content LIKE 'orders';
--
--Poznámka: na každé slovo budú vytvorené tri SELECT-y (jeden SELECT s funkciou FREETEXT(), druhý SELECT s funkciou CONTAINS(), tretí SELECT s operátorom LIKE (pri používaní operátora LIKE je zakázané používať zástupné znaky!). Nad každý SELECT napíšte do komentára, koľko záznamov bolo na dané slovo vyhľadaných.
--
--5. Päť SELECT-ov s funkciou CONTAINS() z predchádzajúceho bodu prepíšte tak, aby ste použili rozšírenie FORMSOF.

SELECT Content FROM Comments WHERE CONTAINS(Content, 'FORMSOF(INFLECTIONAL, "product")');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'FORMSOF(INFLECTIONAL, "discount")');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'FORMSOF(INFLECTIONAL, "ship")');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'FORMSOF(INFLECTIONAL, "shop")');

SELECT Content FROM Comments WHERE CONTAINS(Content, 'FORMSOF(INFLECTIONAL, "orders")');
