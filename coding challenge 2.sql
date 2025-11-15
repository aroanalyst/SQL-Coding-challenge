-- to create bookstore
CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    Price DECIMAL(8,2) CHECK (Price > 0)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    OrderDate DATE NOT NULL,
    Quantity INT CHECK (Quantity > 0),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE (ISBN);

INSERT INTO Books (BookID, Title, Author, ISBN, Price) VALUES
(1, 'The Pragmatic Programmer', 'Andrew Hunt', '978-0201616224', 45.50),
(2, 'Clean Code', 'Robert C. Martin', '978-0132350884', 39.99),
(3, 'Deep Work', 'Cal Newport', '978-1455586691', 29.00),
(4, 'Atomic Habits', 'James Clear', '978-0735211292', 25.75),
(5, 'Thinking, Fast and Slow', 'Daniel Kahneman', '978-0374533557', 30.00);

SELECT * FROM Books;

INSERT INTO Orders (OrderID, BookID, OrderDate, Quantity) VALUES
(101, 1, '2025-11-10', 2),
(102, 3, '2025-11-11', 1),
(103, 5, '2025-11-12', 3);

UPDATE Books
SET Price = 42.00
WHERE BookID = 2;

UPDATE Orders
SET Quantity = 4
WHERE OrderID = 103;

SELECT * FROM Books;
SELECT * FROM Orders;

DELETE FROM Orders
WHERE OrderID = 102;

TRUNCATE TABLE Orders;