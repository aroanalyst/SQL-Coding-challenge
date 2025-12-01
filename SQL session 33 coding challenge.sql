USE sales_analytics;

SELECT *
FROM Customers
WHERE City = (
    SELECT City
    FROM Customers
    WHERE CustomerName = 'Arjun Kumar'
);

SELECT *
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);

SELECT *
FROM Products
WHERE Category = (
    SELECT Category
    FROM Products
    WHERE ProductName = 'Laptop'
);

SELECT o.CustomerID, COUNT(*) AS OrderCount
FROM Orders o
GROUP BY o.CustomerID
HAVING COUNT(*) > (
    SELECT COUNT(*)
    FROM Orders
    WHERE CustomerID = 5
);

SELECT *
FROM Products
WHERE Price > (
    SELECT Price
    FROM Products
    WHERE ProductID = 3
);


