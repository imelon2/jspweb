CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES('kim',1);

INSERT INTO Table01
(name, bookId)
VALUES('lee',2);

INSERT INTO Table01
(name, bookId)
VALUES('choi',3);

INSERT INTO Table01
(name, bookId)
VALUES('park',4);

INSERT INTO Table02
(bookName)
VALUES ('book1');

INSERT INTO Table02
(bookName)
VALUES ('book2');

INSERT INTO Table02
(bookName)
VALUES ('book3');

INSERT INTO Table02
(bookName)
VALUES ('book4');

SELECT * FROM Table01;

SELECT * FROM Table02;


SELECT * FROM Table01, Table02;

SELECT * FROM Table01 JOIN Table02
ON Table01.bookId = Table02.id;

SELECT * FROM
Table01 as t1 JOIN Table02 as t2
ON t1.bookId = t2.id;

-- colum
SELECT 
t1.id,
t1.name AS name1,
t1.bookId,
t2.id,
t2.bookName
 FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;