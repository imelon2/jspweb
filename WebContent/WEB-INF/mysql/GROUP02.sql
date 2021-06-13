SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT Country
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(*) cnt
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;