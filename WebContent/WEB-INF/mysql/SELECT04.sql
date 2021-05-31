SELECT CustomerName 
FROM Customers 
WHERE CustomerID = 1 ;

SELECT CustomerName, City
from Customers
where CustomerID = 1;

SELECT CustomerName,CustomerID, City
from Customers
where CustomerID = 2;

SELECT CustomerID
from Customers;

select * from Employees
where EmployeeID = 1;

select distinct City from Customers
order by City;

select CustomerName from Customers
where CustomerID = 5;

select CustomerName, City from Customers
where CustomerID = 5;

select * from Employees
where EmployeeID =2;

select EmployeeID, LastName, FirstName 
from Employees;

SELECT EmployeeID, LastName, FirstName, Notes
FROM Employees ;