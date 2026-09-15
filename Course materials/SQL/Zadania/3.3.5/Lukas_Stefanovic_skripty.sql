CREATE TABLE [Lukas_Stefanovic_projekt_DB].[dbo].Customers(
CustomerID INT IDENTITY (1,1) PRIMARY KEY,
CustomerFirstName VARCHAR (5),
CustomerLastName VARCHAR(5),
BirthDate DATETIME,
Phone INT,
Email VARCHAR(5),
Address VARCHAR(5),
City VARCHAR(5),
State VARCHAR(5));

ALTER TABLE Customers ADD ZipCode VARCHAR (50);

ALTER TABLE Customers DROP COLUMN BirthDate;

ALTER TABLE Customers ALTER COLUMN Phone VARCHAR(50);

ALTER TABLE Customers ALTER COLUMN CustomerFirstName VARCHAR(50);
ALTER TABLE Customers ALTER COLUMN CustomerLastName VARCHAR(50);
ALTER TABLE Customers ALTER COLUMN Email VARCHAR(50);
ALTER TABLE Customers ALTER COLUMN Address VARCHAR(50);
ALTER TABLE Customers ALTER COLUMN City VARCHAR(50);
ALTER TABLE Customers ALTER COLUMN State VARCHAR(50);

ALTER TABLE Customers ALTER COLUMN CustomerFirstName VARCHAR(50) NOT NULL;
ALTER TABLE Customers ALTER COLUMN CustomerLastName VARCHAR(50) NOT NULL;
ALTER TABLE Customers ALTER COLUMN Email VARCHAR(50) NOT NULL;

EXEC sp_rename 'Customers.Address','Street', 'COLUMN';

ALTER TABLE Customers ADD CONSTRAINT uniqueEmail UNIQUE (Email);

INSERT INTO Customers (
CustomerFirstName,CustomerLastName,Phone,Email,Street,City,State,ZipCode)
OUTPUT inserted.CustomerID,inserted.CustomerFirstName,inserted.CustomerLastName,inserted.Phone,inserted.Email,inserted.Street,inserted.City,inserted.State,inserted.ZipCode
VALUES
('Kellie', 'Franco', '(916) 381-6003', 'kellie.franco@yahoo.com', '28 N. Gregory Court', 'Depew', 'Canada', '14043'),
('Michelle', 'Howell', '(716) 986-3359', 'michelle.howell@aol.com', '54 Brickyard St.', 'Fort Worth', 'UK', '76110'),
('Marigold', 'Goodman', '(516) 583-7761', 'marigold.goodman@gmail.com', '59 Henry Smith St.', 'Canyon Country', 'Canada', '91387'),
('Sylvie', 'Wilkerson', NULL, 'sylvie.wilkerson@yahoo.com', '22 Longbranch Rd.', 'Spring Valley', 'USA', '10977'),
('Kate', 'Bates', NULL, 'kate.bates@gmail.com', '8611 N. Poor House St.', 'Richardson', 'UK', '75080'),
('Marget', 'Hodge', '(510) 246-8375', 'marget.hodge@msn.com', '141 N. Purple Finch Avenue', 'Spring Valley', 'USA', '10977'),
('Paul', 'Melendez', '(717) 670-2634', 'paul.melendez@hotmail.com', '44 SW. Thomas Ave.', 'Saratoga Springs', 'USA', '12866'),
('Michael', 'Hopper', '(281) 489-9656', 'michael.hopper@yahoo.com', '7587 Church St.', 'Desoto', 'UK', '75115'),
('Shae', 'Hickman', '(281) 363-3309', 'shae.hickman@hotmail.com', '41 Edgefield Avenue', 'Deer Park', 'New Zealand', '11729'),
('Monica', 'Sears', NULL, 'monica.sears@aol.com', '6 Kent Street', 'West Hempstead', 'USA', '11552'),
('Raymond', 'Simon', '(716) 912-8110', 'raymond.simon@msn.com', '86 River Lane', 'Richardson', 'UK', '75080'),
('Annett', 'Garrett', NULL, 'annett.garrett@yahoo.com', '8949 S. Gates Road', 'Massapequa', 'USA', '11758'),
('Hayden', 'Cross', '(248) 370-1364', 'hayden.cross@gmail.com', '768 Cooper Street', 'Jamestown', 'New Zealand', '14701'),
('Rolanda', 'Larsen', '(657) 648-2863', 'rolanda.larsen@yahoo.com', '409 W. Rock Maple Lane', 'Albany', 'USA', '12203'),
('Jayme', 'Zamora', '(559) 114-2580', 'jayme.zamora@gmail.com', '7020 Ashley Rd.', 'Glen Cove', 'USA', '11542'),
('Hannah', 'Cotton', NULL, 'hannah.cotton@aol.com', '90 Arlington St.', 'Astoria', 'USA', '11102'),
('Vikki', 'Erickson', '(248) 247-5074', 'vikki.erickson@yahoo.com', '2 Shub Farm St.', 'Rosedale', 'USA', '11422'),
('Fransisca', 'Nicholson', '(516) 156-8031', 'fransisca.nicholson@aol.com', '25 Orchard St.', 'Canyon Country', 'Canada', '91387'),
('Mazie', 'Franco', '(281) 926-8010', 'mazie.franco@hotmail.com', '9903 North Halifax Ave.', 'Monsey', 'USA', '10952'),
('Anderson', 'Martin', NULL, 'anderson.martin@hotmail.com', '69 Woodland St.', 'East Northport', 'New Zealand', '11731'),
('Moira', 'Lester', '(408) 955-8238', 'moira.lester@msn.com', '726 James Dr.', 'Yorktown Heights', 'USA', '10598'),
('Tony', 'Hicks', '(805) 763-4045', 'tony.hicks@gmail.com', '751 Newbridge Ave.', 'Massapequa Park', 'USA', '11762'),
('Hannah', 'Baxter', '(212) 152-6381', 'hannah.baxter@yahoo.com', '762 East Lantern Dr.', 'Fairport', 'UK', '14450'),
('Michael', 'Jefferson', '(805) 478-7724', 'michael.jefferson@gmail.com', '9004 N. Lake Rd.', 'Amityville', 'USA', '11701'),
('Tiana', 'Henderson', '(562) 218-6405', 'tiana.henderson@aol.com', '649 Marvon St.', 'Pleasanton', 'Canada', '94566'),
('Wilda', 'Petersen', '(805) 656-6987', 'wilda.petersen@aol.com', '6 Columbia Dr.', 'Spring Valley', 'USA', '10977'),
('Irving', 'Pitts', '(717) 670-6268', 'irving.pitts@msn.com', '9782 Pineknoll Lane', 'Queensbury', 'UK', '12804'),
('Sheree', 'Pena', NULL, 'sheree.pena@yahoo.com', '398 Green Lake Ave.', 'Mahopac', 'USA', '10541'),
('Vance', 'Taylor', NULL, 'vance.taylor@msn.com', '186 Roehampton Ave.', 'Woodside', 'USA', '11377'),
('Terra', 'Pickett', NULL, 'terra.pickett@aol.com', '520 W. Hamilton St.', 'Elmont', 'New Zealand', '11003'),
('Collene', 'Knox', NULL, 'collene.knox@msn.com', '9956 Lexington Rd.', 'Mount Vernon', 'USA', '10550'),
('Alysia', 'Nicholson', NULL, 'alysia.nicholson@hotmail.com', '17 Orange Court', 'Ithaca', 'USA', '14850'),
('Sharie', 'Whitaker', '(631) 315-4020', 'sharie.whitaker@hotmail.com', '523 Prairie St.', 'West Islip', 'USA', '11795'),
('Diana', 'Cobb', '(916) 219-1774', 'diana.cobb@hotmail.com', '9434 Cypress Court', 'Desoto', 'UK', '75115'),
('Morton', 'Barron', '(915) 181-1950', 'morton.barron@msn.com', '9490 Coffee St.', 'Garland', 'UK', '75043'),
('Camille', 'Harvey', '(716) 950-9835', 'camille.harvey@hotmail.com', '9842 Fairview St.', 'Rochester', 'USA', '14606'),
('Anita', 'Neill', '(442) 919-8256', 'anita.neill@aol.com', '8252 Theatre St.', 'Port Washington', 'USA', '11050'),
('Terese', 'Briggs', '(805) 961-9909', 'terese.briggs@msn.com', '203 Penn St.', 'Ridgecrest', 'Canada', '93555'),
('Maria', 'Glover', NULL, 'maria.glover@msn.com', '9100 Gates Ave.', 'Mount Vernon', 'USA', '10550'),
('Vinnie', 'Henderson', NULL, 'vinnie.chan@aol.com', '8306 Jockey Hollow Street', 'Liverpool', 'UK', '13090'),
('Jule', 'Davenport', '(442) 497-3353', 'jule.davenport@aol.com', '9022 Bridgeton St.', 'Newburgh', 'USA', '12550'),
('Lonna', 'Franks', '(212) 211-7621', 'lonna.franks@yahoo.com', '855 Bohemia Dr.', 'Pittsford', 'USA', '14534'),
('Elease', 'Taylor', '(717) 126-8787', 'elease.taylor@gmail.com', '827 Laurel Ave.', 'Tonawanda', 'USA', '14150'),
('Maria', 'Long', '(229) 813-2130', 'maria.long@msn.com', '12 Vine Road', 'Oakland Gardens', 'Canada', '11364'),
('Jana', 'Thomas', '(510) 788-7298', 'jana.thomas@yahoo.com', '613 Mill Pond St.', 'Yonkers', 'USA', '10701'),
('Shae', 'Harvey', '(408) 658-2285', 'shae.harvey@hotmail.com', '3 South Grant Avenue', 'Saint Albans', 'Canada', '11412'),
('Erik', 'Leblanc', '(281) 658-7772', 'erik.leblanc@aol.com', '9005 Lookout Lane', 'Santa Monica', 'Canada', '90403'),
('Daina', 'Sampson', NULL, 'daina.sampson@msn.com', '829 Birchpond Street', 'Spring Valley', 'USA', '10977'),
('Delmar', 'Wise', NULL, 'delmar.wise@yahoo.com', '8257 E. Westminster Ave.', 'Santa Clara', 'Canada', '95050'),
('Anita', 'Salinas', '(805) 885-8830', 'anita.salinas@hotmail.com', '747 SE. Beech Ave.', 'York', 'UK', '78418');
