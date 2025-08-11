use library;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

use library;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Amit Sharma', 'India'),
(2, 'Priya Verma', 'India'),
(3, 'John Smith', 'USA'),
(4, 'Sara Khan', 'UAE');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2025-08-01', 5000.00),
(102, 1, '2025-08-02', 3000.00),
(103, 2, '2025-08-03', 7000.00),
(104, 4, '2025-08-04', 2000.00);

-- solve the queery with the help of joins 
-- inner joins( only matching records)
-- give only costumer who placed oders

select 
c.CustomerID,
c.CustomerName,
c.Country,
o.OrderID,
o.OrderDate,
o.amount
from Customers as c 
inner join Orders as o
on c.CustomerID = o.CustomerID;
-- left joins
-- left join give umatching record from left table along with matching record

SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
-- Right join
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Country,
    o.OrderID,
    o.OrderDate,
    o.Amount
FROM Customers AS c
RIGHT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;


