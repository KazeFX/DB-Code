-- MariaDB / MySQL
SET sql_mode = 'STRICT_ALL_TABLES,NO_ENGINE_SUBSTITUTION';

DROP TABLE IF EXISTS DogExhibition;
DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Exhibition;
DROP TABLE IF EXISTS Breed;
DROP TABLE IF EXISTS Owner;

CREATE TABLE Owner (
  Name VARCHAR(128) NOT NULL,
  id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE Breed (
  Name VARCHAR(128) NOT NULL,
  id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE Exhibition (
  Name VARCHAR(128) NOT NULL,
  Date VARCHAR(128) NOT NULL,
  id   INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE Dog (
  Id      INT NOT NULL AUTO_INCREMENT,
  Name    VARCHAR(128) NOT NULL,
  OwnerId INT NOT NULL,
  BreedId INT NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (OwnerId) REFERENCES Owner(id),
  FOREIGN KEY (BreedId) REFERENCES Breed(id)
);

CREATE TABLE DogExhibition (
  DogId        INT NOT NULL,
  ExhibitionId INT NOT NULL,
  Points       INT NOT NULL,
  FOREIGN KEY (DogId) REFERENCES Dog(Id),
  FOREIGN KEY (ExhibitionId) REFERENCES Exhibition(id)
);

####################################################################

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Super Duper Dog Exhibition', '2026-11-11', 1);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Mega Dog Show', '2027-01-02', 2);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Boring Dog Show','2026-12-12', 3);

INSERT INTO Exhibition (Name, Date, Id)
VALUES ('Most Awesome Dog Show Ever', '2027-06-12', 4);

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

INSERT INTO Breed (name, id)
VALUES ('German Shepard', 4);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUES ('Osci', 3, 1);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUES ('Loki', 1, 2);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUES ('Caro', 1, 3);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Luffsen', 2, 1);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Max', 2, 1);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Christoffer', 2, 4);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Johannes', 3, 2);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Charlie', 1, 3);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Bella', 3, 2);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Cooper', 3, 1);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Milo', 1, 1);

INSERT INTO Dog (Name, OwnerId, BreedId)
VALUE ('Rocky', 2, 1);

SELECT * FROM Dog;