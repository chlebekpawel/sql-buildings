#MySQL schema

CREATE TABLE Country
(
CountryID int NOT NULL,
Name VARCHAR(20) NOT NULL,
PRIMARY KEY (CountryID)
) ;

CREATE TABLE City
(
CityID int NOT NULL,
CountryID int NOT NULL,
Name VARCHAR(20) NOT NULL,
Population int NOT NULL,
PRIMARY KEY (CityID),
CONSTRAINT fk_CitiesToCountries FOREIGN KEY (CountryID)
REFERENCES Country(CountryID)
) ;

CREATE TABLE Building
(
BuildingID int NOT NULL,
CityID int NOT NULL,
Name VARCHAR(20) NOT NULL,
Floors int NOT NULL,
PRIMARY KEY (BuildingID),
CONSTRAINT fk_BuildingsToCities FOREIGN KEY (CityID)
REFERENCES City(CityID)
) ;

INSERT INTO Country (CountryID, Name) VALUES (1, "POLAND");
INSERT INTO Country (CountryID, Name) VALUES (2, "GERMANY");
INSERT INTO Country (CountryID, Name) VALUES (3, "FRANCE");
INSERT INTO Country (CountryID, Name) VALUES (4, "ITALY");

INSERT INTO City (CityID, CountryID, Name, Population) VALUES (1, 1, "Wroclaw", 200);
INSERT INTO City (CityID, CountryID, Name, Population) VALUES (2, 1, "Krakow", 300);
INSERT INTO City (CityID, CountryID, Name, Population) VALUES (3, 2, "Bremen", 300);
INSERT INTO City (CityID, CountryID, Name, Population) VALUES (4, 2, "Hamburg", 500);
INSERT INTO City (CityID, CountryID, Name, Population) VALUES (5, 3, "Lyon", 200);
INSERT INTO City (CityID, CountryID, Name, Population) VALUES (6, 3, "Caen", 200);

INSERT INTO Building (BuildingID, CityID, Name, Floors) VALUES (1, 1, "Stary Ratusz", 1);
INSERT INTO Building (BuildingID, CityID, Name, Floors) VALUES (2, 1, "Kosciol Wojciecha", 2);
INSERT INTO Building (BuildingID, CityID, Name, Floors) VALUES (3, 2, "Wawel", 3);
INSERT INTO Building (BuildingID, CityID, Name, Floors) VALUES (4, 3, "Kirche", 4);