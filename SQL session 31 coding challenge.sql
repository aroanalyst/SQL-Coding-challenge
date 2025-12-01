use sales_analytics;

select * from customers order by CustomerName asc;

select * from products order by price desc limit 3;

select count(*) as Total_Customers from customers ;

select city,count(*)as total_customer from customers
group by city;

select  gender , count(*) as total_customers from customers
group by gender;

select city,count(*) as total_customer
from customers
group by city
having count(*)>2;

select customerid,count(*)as total_orders from orders 
group by CustomerID
having count(*)>3; 

select * from products where price >5000 
order by price desc
limit 3;

select productid , sum(quantity) as totalquantity_sold
from orders
group by ProductID
having sum(quantity) between 5 and 8;

select city,count(*) as total_customers from customers
group by city
order by count(*) desc;

select * from customers where city in ('chennai','pune','hyderabad')
order by CustomerName asc;

select city,customername from customers  
where  city in ('chennai','pune','hyderabad')
order by city asc ,CustomerName asc;

SELECT *
FROM products
WHERE category NOT IN ('Electronics')
  AND price < 10000;
  
select * from customers where customername like 'A%'
order by CustomerID;

select category, avg(price) as avg_price from products
group by category
having avg_price>5000;



