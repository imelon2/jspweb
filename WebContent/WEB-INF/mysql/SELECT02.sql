-- WHERE : row를 조건으로 필터
select * 
from Customers
WHERE Country="Mexico";

select * 
from Customers
WHERE CustomersID="1";

select * 
from Products
where Price = 18;

select * 
from Products
where Price > 18;

select * 
from Products
where Price < 30;

select * 
from Products
where Price <> 30;

select * 
from Products
where Price BETWEEN 53 and 55;

SELECT * FROM Customers
where City LIKE 's%';

SELECT * FROM Customers
where City LIKE '%g';

SELECT * FROM Customers
where City LIKE '%z%';

SELECT * FROM Customers
where Country LIKE '%us%';

-- IN
SELECT * FROM Customers
where City in ('Paris','London');

select * from Customers
where Country='Germany' AND City='Berlin';

select * from Customers
where City='München' or City='Berlin';

select * from Customers
where Country='Germany' OR
 (CustomerName LIKE 's%' AND City LIKE '%ch%');
 
 SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');