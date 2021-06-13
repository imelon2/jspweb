CREATE TABLE Table03
(
	id3 int,
    name VARCHAR(255)
);
CREATE TABLE Table4
(
	id4 int,
    city VARCHAR(255)
);

INSERT INTO Table03 (id3, name) VALUES (1, 'bts');
INSERT INTO Table03 (id3, name) VALUES (2, 'twice');
INSERT INTO Table03 (id3, name) VALUES (3, 'redvelvet');
SELECT * FROM Table03;

INSERT INTO Table4 (id4, city) VALUES (10, 'seoul');
INSERT INTO Table4 (id4, city) VALUES (20, 'ny');
INSERT INTO Table4 (id4, city) VALUES (30, 'london');
SELECT * FROM Table4;

SELECT * FROM Table03
UNION ALL
SELECT * FROM Table4;


