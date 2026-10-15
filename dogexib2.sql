-- MariaDB / MySQL
SET sql_mode = 'STRICT_ALL_TABLES,NO_ENGINE_SUBSTITUTION';

DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Exhibition;
DROP TABLE IF EXISTS Breed;
DROP TABLE IF EXISTS Owner;

CREATE TABLE Owner (
  Name VARCHAR(128) NOT NULL,
  Id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Id)
);

CREATE TABLE Breed (
  Name VARCHAR(128) NOT NULL,
  Id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Id)
);

CREATE TABLE Exhibition (
  Name VARCHAR(128) NOT NULL,
  Date VARCHAR(128) NOT NULL,
  Id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Id)
);

CREATE TABLE Dog (
  Name    VARCHAR(128) NOT NULL,
  OwnerId INT NOT NULL,
  BreedId INT NOT NULL,
  ExhibId INT NOT NULL,
  Points  VARCHAR(128) NOT NULL,
  FOREIGN KEY (OwnerId) REFERENCES Owner(Id),
  FOREIGN KEY (BreedId) REFERENCES Breed(Id),
  FOREIGN KEY (ExhibId) REFERENCES Exhibition(Id)
);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Super Duper Dog Exhibition', '2026-11-11', 1);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Mega Dog Show', '2027-01-02', 2);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Boring Dog Show','2026-12-12', 3);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Most Awesome Dog Show Ever', '2027-06-12');

INSERT INTO Owner (Name, Id)
VALUES ('Kaze', 1);

INSERT INTO Owner (Name, Id)
VALUES ('Jake', 2);

INSERT INTO Owner (Name, Id)
VALUES ('Izi', 3);

INSERT INTO Breed (Name, Id)
VALUES ('Shi Tzu', 1);

INSERT INTO Breed (Name, Id)
VALUES ('Dachshund', 2);

INSERT INTO Breed (name, id)
VALUES ('Golden Retriever', 3);


INSERT INTO Dog (Name, OwnerId, BreedId, ExhibId, Points)
VALUES ('Osci', 3, 1, 1, 9001);

INSERT INTO Dog (Name, OwnerId, BreedId, ExhibId, Points)
VALUES ('Loki', 1, 2, 3, 200);

INSERT INTO Dog (Name, OwnerId, BreedId, ExhibId, Points)
VALUES ('Caro', 1, 3, 1, 100);

INSERT INTO Dog (Name, OwnerId, BreedId, ExhibId, Points)
VALUE ('Luffsen', 2, 1, 2, 42);

