select * from Customers;

select * from Customers
LIMIT 10;

select * from Customers
order by CustomerID
limit 10;

select * from Customers
order by CustomerID
limit 0, 10;

select * from Customers
order by CustomerID
limit 10, 10;

select CustomerID, CustomerName, City from Customers
order by CustomerID;