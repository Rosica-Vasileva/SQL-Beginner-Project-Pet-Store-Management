#1
SELECT * FROM products
WHERE CategoryID = '2';

SELECT * FROM products
WHERE CategoryID = '4';

#2
SELECT * FROM Orders 
WHERE СustomerID = 3;

#3
SELECT * FROM `Orders` WHERE CustomerID = 3;
SELECT * FROM `Orders` WHERE CustomerID = 10;

#4
INSERT INTO Products (ProductID, Name, Price, Stock, CategoryID)
VALUES ('11', 'Small Animal Cage', '34.99', '70', '4');

INSERT INTO Products (ProductID, Name, Price, Stock, CategoryID)
VALUES 
    ('12', 'Rabbit Food', '15.99', '90', '1'),
    ('13', 'Bird Seed', '9.99', '120', '3'),
    ('14', 'Fish Flakes', '6.49', '200', '2');

#5
UPDATE Products
SET Stock = Stock - '26'
WHERE ProductID = '1';

UPDATE Products
SET Stock = Stock - '20'
WHERE ProductID = '5';


