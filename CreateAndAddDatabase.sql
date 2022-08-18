DROP DATABASE IF EXISTS BookStore;
CREATE DATABASE BookStore; 
USE BookStore;

DROP TABLE IF EXISTS Authors;
CREATE TABLE Authors
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 AuthorName VARCHAR(255) NOT NULL,
);

DROP TABLE IF EXISTS Publishers;
CREATE TABLE Publishers
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 PublisherName VARCHAR(255) NOT NULL,
);

DROP TABLE IF EXISTS Genres;
CREATE TABLE Genres
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 GenrerName VARCHAR(255) NOT NULL,
);

DROP TABLE IF EXISTS Books;
CREATE TABLE Books
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 BookName VARCHAR(255) NOT NULL,
 IdAuthor INT NOT NULL FOREIGN KEY REFERENCES Authors(Id) ON DELETE CASCADE,
 IdPublisher INT NOT NULL FOREIGN KEY REFERENCES Publishers(Id) ON DELETE CASCADE,
 IdGenre INT NOT NULL FOREIGN KEY REFERENCES Genres(Id) ON DELETE CASCADE,
 IdContinueBook INT NULL FOREIGN KEY REFERENCES Books(Id) ON DELETE NO ACTION,
 Pages int NOT NULL,
 PublishYear Date NOT NULL,
 CostPrice Money NOT NULL,
 SellingPrice Money NOT NULL,
 Count  int NOT NULL,
);

DROP TABLE IF EXISTS Sellers;
CREATE TABLE Sellers
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 SellerName VARCHAR(255) NOT NULL,
);

DROP TABLE IF EXISTS Buyers;
CREATE TABLE Buyers
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 BuyerName VARCHAR(255) NOT NULL,
);

DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 IdBook INT NOT NULL FOREIGN KEY REFERENCES Books(Id) ON DELETE CASCADE,
 IdSeller INT NOT NULL FOREIGN KEY REFERENCES Sellers(Id) ON DELETE CASCADE,
 IdBuyer INT NOT NULL FOREIGN KEY REFERENCES Buyers(Id) ON DELETE CASCADE,
 Count  int NOT NULL,
 TotalPrice Money NOT NULL,
 SellDate Date NOT NULL,

);

DROP TABLE IF EXISTS Reserves;
CREATE TABLE Reserves
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 IdBook INT NOT NULL FOREIGN KEY REFERENCES Books(Id) ON DELETE CASCADE,
 IdBuyer INT NOT NULL FOREIGN KEY REFERENCES Buyers(Id) ON DELETE CASCADE,
 Count  int NOT NULL,
);

DROP TABLE IF EXISTS Substracts;
CREATE TABLE Substracts
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 IdBook INT NOT NULL FOREIGN KEY REFERENCES Books(Id) ON DELETE CASCADE,
 Count  int NOT NULL,
);


DROP TABLE IF EXISTS Stocks;
CREATE TABLE Stocks
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 IdBook INT NOT NULL FOREIGN KEY REFERENCES Books(Id) ON DELETE CASCADE,
 StockName VARCHAR(255) NOT NULL,
 StockPercent DECIMAL(3, 2) NOT NULL,
);

DROP TABLE IF EXISTS Users;
CREATE TABLE Users
(
 Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 UserName VARCHAR(255) NOT NULL,
 Password VARCHAR(255) NOT NULL,
);


insert into Authors(AuthorName) values ('Достоевский Ф.М.');
insert into Authors(AuthorName) values ('Пушкин А.А.');
insert into Authors(AuthorName) values ('Толстой Л.Н.');
insert into Authors(AuthorName) values ('Чехов А.П.');
insert into Authors(AuthorName) values ('Гоголь Н.В.');
insert into Authors(AuthorName) values ('Булгаков М.А.');
insert into Authors(AuthorName) values ('Гинг С.');
insert into Authors(AuthorName) values ('Чейз Д.Х.');
insert into Authors(AuthorName) values ('Агата К.М.');
insert into Authors(AuthorName) values ('Брэдбери Р.Д.');

insert into Publishers(PublisherName) values ('Литрес');
insert into Publishers(PublisherName) values ('Нижполиграф');
insert into Publishers(PublisherName) values ('Просвещение');

insert into Genres(GenrerName) values ('Зарубежная классика');
insert into Genres(GenrerName) values ('Сказки');
insert into Genres(GenrerName) values ('Русская литература');
insert into Genres(GenrerName) values ('Зарубежные детективы');
insert into Genres(GenrerName) values ('Зарубежная фантастика');
insert into Genres(GenrerName) values ('Поэзия');

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Идиот', 1, 1, 1, null, 843, '01-01-2016', 5500, 12, 7500);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Стихи Пушкина, том 1', 2, 6, 2, null, 358, '01-01-2012', 4300, 8, 6400);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Война и мир, том 1', 3, 3, 3, null, 534, '01-01-2020', 7600, 16, 8600);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Хамелеон', 4, 3, 1, null, 654, '01-01-2008', 3590, 16, 8600);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Ревизор', 5, 3, 2, null, 487, '01-01-2011', 6100, 14, 7800);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Мастер и маргарита', 6, 3, 3, null, 533, '01-01-2010', 4700, 11, 6300);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Оно', 7, 4, 1, null, 763, '01-01-2004', 8200, 18, 9800);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Запах золота', 8, 4, 2, null, 564, '01-01-2006', 7350, 15, 8650);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Десять нигретят', 9, 4, 3, null, 762, '01-01-2018', 4700, 6, 6400);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Горизонты фантастики', 10, 5, 1, null, 537, '01-01-2014', 5300, 7, 7700);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Сказки Пушкина', 2, 2, 2, null, 426, '01-01-2002', 3300, 5, 5200);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Стихи Пушкина, том 2', 2, 6, 2, 2, 432, '01-01-2013', 4400, 9, 6500);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Стихи Пушкина, том 3', 2, 6, 2, 2, 324, '01-01-2014', 4500, 10, 6600);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Война и мир, том 2', 3, 3, 3, 3, 343, '01-01-2021', 7700, 17, 8700);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Война и мир, том 3', 3, 3, 3, 3, 443, '01-01-2022', 7800, 18, 8800);

insert into Books(BookName, IdAuthor, IdGenre, IdPublisher, IdContinueBook, Pages, PublishYear, CostPrice, Count, SellingPrice) 
values ('Оно 2', 7, 4, 1, 7, 654, '01-01-2005', 8300, 19, 9900);

insert into Sellers(SellerName) values ('Иванов И.И.');
insert into Sellers(SellerName) values ('Петров П.П.');
insert into Sellers(SellerName) values ('Сидоров С.С.');

insert into Buyers(BuyerName) values ('Омаров О.О.');
insert into Buyers(BuyerName) values ('Ахметов А.А.');
insert into Buyers(BuyerName) values ('Абаев А.А.');

insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 1, 1, 1, 1000, '25-07-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 2, 2, 2, 1000, '25-07-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 3, 3, 3, 1000, '25-07-2022');

insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (3, 3, 3, 3, 3000, '23-07-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 1, 1, 4, 4000, '22-07-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 2, 2, 5, 5000, '21-07-2022');

insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 1, 1, 1, 2000, '26-06-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 2, 2, 2, 2000, '27-06-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 3, 3, 3, 2000, '28-06-2022');

insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 1, 1, 1, 2000, '21-06-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 2, 2, 2, 2000, '21-06-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 3, 3, 3, 2000, '21-06-2022');

insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (3, 3, 3, 3, 3000, '20-05-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 1, 1, 4, 4000, '19-04-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 2, 2, 5, 5000, '18-03-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (3, 3, 3, 6, 6000, '17-02-2022');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 1, 1, 7, 7000, '16-01-2021');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (2, 2, 2, 8, 8000, '15-12-2021');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (3, 3, 3, 9, 9000, '14-11-2021');
insert into Sales(IdBook, IdSeller, IdBuyer, Count, TotalPrice, SellDate) values (1, 1, 1, 10, 10000, '13-10-2021');


insert into Stocks(IdBook, StockName, StockPercent) values (1, 'к 1 сентября', 0.12);
insert into Stocks(IdBook, StockName, StockPercent) values (2, 'к дню конституции', 0.10);
insert into Stocks(IdBook, StockName, StockPercent) values (3, 'к дню независимости', 0.16);
insert into Stocks(IdBook, StockName, StockPercent) values (4, 'к новому году', 0.5);
insert into Stocks(IdBook, StockName, StockPercent) values (4, 'к наурызу', 0.7);