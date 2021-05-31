SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName,
 ContactName, Address,
 City, PostalCode, Country)
VALUES
(92, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

insert into Customers
values
(93, 'Choi', 'Hond', 'Gangnam', 'Seoul', '00000', 'Korea');

insert into Customers
(CustomerID, CustomerName,
 ContactName)
values
(95, 'Back', 'b');

insert into Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
values
('Trump', 'Conald', 'MY', 'NY', '000', 'US');


DESC Customers;
DESC Employees;

insert into Employees
(FirstName, LastName, Notes)
values
('choi', 'wonhyeok', '951001');

