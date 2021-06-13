-- 1번 고객의 나라
SELECT Country FROM Customers
WHERE CustomerID =1;
-- Germany
SELECT * FROM Customers
WHERE Country = 'Germany';

SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID=1);

-- 1번 고객와 같은 나라에 있는 공급자(suppliers) 목록
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Suppliers WHERE SupplierID=1);

SELECT * FROM Suppliers;

-- 직원 Fuller 보다 나이가 많은 사람
SELECT * FROM Employees
WHERE BirthDate < (SELECT BirthDate FROM Employees WHERE EmployeeID=2);