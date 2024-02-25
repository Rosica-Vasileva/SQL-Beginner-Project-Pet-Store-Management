CREATE TABLE Products (
ProductID INT PRIMARY KEY,
Name VARCHAR (255),
Price DECIMAL (10,2),
Stock INT,
CategoryID INT 
);

INSERT INTO Products (ProductID, Name, Price, Stock, CategoryID) VALUES
    (1, 'Dog Food', 25.99, 100, '01'),
    (2, 'Cat Food', 20.99, 80, '01'),
    (3, 'Fish Tank', 49.99, 30, '02'),
    (4, 'Bird Cage', 39.99, 50, '03'),
    (5, 'Hamster Wheel', 12.99, 120, '04'),
    (6, 'Tropical Fish Food', 8.99, 150, '02'),
    (7, 'Parrot Perch', 14.99, 60, '03'),
    (8, 'Guinea Pig Hay', 7.99, 200, '04'),
    (9, 'Litter Box', 29.99, 40, '05'),
    (10, 'Reptile Heat Lamp', 19.99, 90, '06');

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    ContactInfo VARCHAR(255)
);

INSERT INTO Customers (CustomerID, Name, Address, ContactInfo) VALUES
    (1, 'John Smith', '123 Main Street, City, State, ZIP', 'john@example.com'),
    (2, 'Emma Johnson', '456 Elm Street, City, State, ZIP', 'emma@example.com'),
    (3, 'Michael Williams', '789 Oak Street, City, State, ZIP', 'michael@example.com'),
    (4, 'Sophia Brown', '321 Pine Street, City, State, ZIP', 'sophia@example.com'),
    (5, 'William Jones', '654 Maple Street, City, State, ZIP', 'william@example.com'),
    (6, 'Olivia Davis', '987 Cedar Street, City, State, ZIP', 'olivia@example.com'),
    (7, 'James Miller', '135 Birch Street, City, State, ZIP', 'james@example.com'),
    (8, 'Ava Wilson', '246 Walnut Street, City, State, ZIP', 'ava@example.com'),
    (9, 'Ethan Moore', '579 Spruce Street, City, State, ZIP', 'ethan@example.com'),
    (10, 'Isabella Taylor', '864 Sycamore Street, City, State, ZIP', 'isabella@example.com');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, OrderDate, CustomerID, TotalAmount) VALUES
    (1, '2024-02-01', 1, 75.97),
    (2, '2024-02-03', 1, 89.96),
    (3, '2024-02-05', 1, 101.98),
    (4, '2024-02-02', 2, 42.97),
    (5, '2024-02-04', 2, 67.99),
    (6, '2024-02-06', 2, 55.98),
    (7, '2024-02-07', 3, 29.99),
    (8, '2024-02-09', 3, 44.97),
    (9, '2024-02-10', 3, 19.98),
    (10, '2024-02-08', 4, 79.96),
    (11, '2024-02-11', 4, 35.99),
    (12, '2024-02-12', 4, 41.98),
    (13, '2024-02-13', 5, 15.99),
    (14, '2024-02-15', 5, 29.97),
    (15, '2024-02-17', 5, 10.98),
    (16, '2024-02-14', 6, 50.97),
    (17, '2024-02-16', 6, 35.98),
    (18, '2024-02-18', 6, 44.96),
    (19, '2024-02-20', 7, 65.97),
    (20, '2024-02-22', 7, 50.98),
    (21, '2024-02-24', 7, 39.99),
    (22, '2024-02-21', 8, 25.98),
    (23, '2024-02-23', 8, 55.97),
    (24, '2024-02-25', 8, 30.98),
    (25, '2024-02-26', 9, 20.99),
    (26, '2024-02-27', 9, 15.98),
    (27, '2024-02-28', 9, 10.97),
    (28, '2024-02-29', 10, 45.98),
    (29, '2024-03-01', 10, 60.99),
    (30, '2024-03-02', 10, 23.97);



CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
    (1, 1, 2, 25.99),
    (1, 3, 1, 49.99),
    (2, 2, 3, 20.99),
    (2, 4, 2, 39.99),
    (3, 5, 1, 12.99),
    (3, 1, 2, 25.99),
    (4, 3, 1, 49.99),
    (4, 4, 1, 39.99),
    (5, 2, 2, 20.99),
    (5, 5, 3, 12.99),
    (6, 1, 1, 25.99),
    (6, 4, 1, 39.99),
    (7, 5, 2, 12.99),
    (7, 2, 1, 20.99),
    (8, 3, 1, 49.99),
    (8, 1, 1, 25.99),
    (9, 4, 2, 39.99),
    (9, 5, 1, 12.99),
    (10, 2, 3, 20.99),
    (10, 4, 2, 39.99);


