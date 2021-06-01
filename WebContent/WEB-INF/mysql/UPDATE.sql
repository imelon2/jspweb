select* from Customers;

UPDATE Customers
SET CustomerName = '아이어맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	ContactName = 'odinson'
	Address = 'Asgard';