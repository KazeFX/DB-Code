DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Publisher;

CREATE TABLE Author (
    Name varchar(128),
    Id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id)
);

CREATE TABLE Publisher (
    Name varchar(128),
    Id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id)
);

CREATE TABLE Book (
    Id int not null auto_increment,
    Name varchar(128),
    AuthorId int,
    Year int,
    Quality varchar(128),
    PublisherId int,
    PRIMARY KEY (Id),
    FOREIGN KEY (AuthorId) REFERENCES Author(Id),
    FOREIGN KEY (PublisherId) REFERENCES Publisher(Id)
);

INSERT INTO Publisher (Name, Id)
VALUES ('Tor', 1);

INSERT INTO Publisher (Name, Id)
VALUES ('Bantham', 2);

INSERT INTO Publisher (Name, Id)
VALUES ('Trinity Books', 3);

INSERT INTO Publisher (Name, Id)
VALUES ('Lowkey Boring Books', 4);

INSERT INTO Author (Name, Id)
VALUES ('J.R.R Tolkien', 1);

INSERT INTO Author (Name, Id)
VALUES ('Robert Jordan', 2);

INSERT INTO Author (Name, Id)
VALUES ('George R.R. Martin', 3);

INSERT INTO Book (Name, AuthorId, Year, Quality, PublisherId)
VALUES  ('Lord of The Rings', 1, 1954, 'Great', 1);

INSERT INTO Book (Name, AuthorId, Year, Quality, PublisherId)
VALUES ('Eye of The World', 2, 1992, 'Poor', 1);

INSERT INTO Book (Name, AuthorId, Year, Quality, PublisherId)
VALUES ('A Game of Thrones', 3, 1994, 'Good', 2);



SELECT Book.Name, Book.Year, Book.Quality from Book
where AuthorId = 1;