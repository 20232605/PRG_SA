CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR,
Category VARCHAR,
Price NUMBER CHECK (POSITIVE),
StockQuantity INT,
ProductImage BLOB
);

CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
FirstName VARCHAR,
LastName VARCHAR, 
Email VARCHAR UNIQUE,
PhoneNumber VARCHAR,
CustomerProfile CLOB,
);

CREATE EXTERNAL TABLE (
SaleID INT PRIMARY KEY,
ProductID INT FOREIGN KEY,
CustomerID INT FOREIGN KEY,
SaleDate DATE,
QuantitySold INT,
CONSTRAINTS ( fk_products(ProductID) reference(Products)),
CONSTRAINTS ( fk_customers(CustomerID) reference(Customers)),

CREATE USER StoreManager;
GRANT USER StoreManager CREATE SESSION;
GRANT USER StoreManager CREATE TABLE;
GRANT USER StoreManager CREATE VIEW;

GRANT USER StoreManager INSERT VALUES INSERT INTO Products VALUES ();
GRANT USER StoreManager INSERT VALUES INSERT INTO Customers VALUES ();
GRANT USER StoreManager UPDATE;
GRANT USER StoreManager DELETE;


CREATE USER SalesClerk;
GRANT USER StoreManager INSERT VALUES INTO Products VALUES();
GRANT USER StoreManager INSERT VALUES INTO Customers VALUES();

CREATE USER SalesAssistant;
ASSIGN ROLE SalesClerk TO SalesAssistant;





