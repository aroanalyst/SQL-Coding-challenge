USE sales_analytics;

SELECT DISTINCT city
FROM customers;

SELECT DISTINCT Category
FROM products;

SELECT customername AS Customer_Name,
       Email AS Email_ID
FROM customers;

select ProductName,
price,
(price *2) as Doubleprice
from products;


select *from customers where city='hyderabad';

select*from products where price >10000;

select *from orders where OrderDate >'2025-01-12';

select productname,price, (price * 1.10) as tax_price from products; 

select * from customers where gender='female' and city='chennai';

select*from products where price <> 1500;

select*from customers where email is null;

select * from orders where quantity is not null;

SELECT * FROM customers WHERE city IN ('Chennai', 'Bangalore', 'Hyderabad');

select * from products where Category  not in ('electronics','furniture');





