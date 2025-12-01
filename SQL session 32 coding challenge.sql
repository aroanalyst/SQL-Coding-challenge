use sales_analytics;

SELECT o.OrderID, c.CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT c.CustomerName, o.OrderID
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT s.SalespersonName, o.OrderID
FROM Orders o
RIGHT JOIN Salespersons s ON o.SalespersonID = s.SalespersonID;

SELECT o.OrderID, c.CustomerName, p.ProductName, o.Quantity, o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
ORDER BY o.OrderID;

SELECT o.OrderID, c.CustomerName, p.ProductName, o.Quantity, o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE c.City = 'Chennai';

SELECT o.OrderID, (p.Price * o.Quantity) AS TotalAmount
FROM Orders o
INNER JOIN Products p ON o.ProductID = p.ProductID;

SELECT c.CustomerName, SUM(p.Price * o.Quantity) AS TotalPurchase
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalPurchase DESC
LIMIT 5;

SELECT 
    s.SalespersonName,
    s.Region,
    SUM(p.Price * o.Quantity) AS TotalSales
FROM Orders o
INNER JOIN Salespersons s ON o.SalespersonID = s.SalespersonID
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY s.SalespersonName , s.Region;

SELECT DISTINCT c.CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE p.ProductName = 'Laptop';

SELECT p.ProductName, SUM(o.Quantity) AS TotalQuantity
FROM Orders o
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantity DESC
LIMIT 1;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '2025-01-01' AND '2025-01-31';

SELECT WEEK(OrderDate) AS WeekNumber, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY WEEK(OrderDate)
ORDER BY WeekNumber;

SELECT MIN(OrderDate) AS EarliestOrder, MAX(OrderDate) AS LatestOrder
FROM Orders;

SELECT o.OrderID, c.CustomerName, DAYNAME(o.OrderDate) AS DayName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT DAYNAME(o.OrderDate) AS DayName,
       SUM(p.Price * o.Quantity) AS TotalSales,
       SUM(o.Quantity) AS TotalQuantity
FROM Orders o
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY DayName
ORDER BY FIELD(DayName,
               'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');

