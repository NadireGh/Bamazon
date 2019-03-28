
DROP DATABASE IF EXISTS bamazon_db; 

CREATE DATABASE bamazon_db;

USE bamazon_db;



CREATE TABLE Products(
ItemID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(150) NOT NULL,
DepartmentName VARCHAR(150) NOT NULL,
Price decimal(10,4) NOT NULL,
StockQuantity int(100) NOT NULL
);


INSERT INTO Products(ProductName, DepartmentName, Price, StockQuantity)
VALUES ("Eggs", "grocery", 1.99, 12),
  ("Milk", "grocery", 2.99, 24),
  ("PSP", "electronics", 199.99, 5),
  ("Xbox 360", "electronics", 179.99, 7),
  ("iPad", "electronics", 399.99, 18),
  ("Bicycle", "sporting goods", 599.99, 2),
  ("Football", "sporting goods", 9.99, 49),
  ("One Day", "books", 9.99, 69),
  ("Game of Thrones", "books", 19.99, 33),
  ("Dance Club", "books", 11.99, 6),
  ("Read Club", "dvds", 13.99, 36),  
  ("Office Space", "dvds", 9.99, 21),
  ("Dark Side of the Moon", "music", 11.55, 15);


 SELECT * FROM Products;



CREATE TABLE Departments(
DepartmentID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
DepartmentName VARCHAR(150) NOT NULL,
OverHeadCosts decimal(10,4) NOT NULL,
TotalSales decimal(10,4) NOT NULL
);



INSERT INTO Departments(DepartmentName, OverHeadCosts, TotalSales)
VALUES ("grocery", 10500.00, -10000.00), 
  ("electronics", 25000.00, 0.00),
  ("sporting goods", 15000.00, 0.00),
  ("books", 5000.00, 0.00),
  ("dvds", 20000.00, 0.00),
  ("music", 7500.00, 0.00);


SELECT * FROM Departments;