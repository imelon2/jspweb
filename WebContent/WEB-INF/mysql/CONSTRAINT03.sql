CREATE TABLE MyTable1
(id INT PRIMARY Key,
name VARCHAR(255)
);

DESC MyTable1;

INSERT into MyTable1
(id, name)
VALUES
(1,'hello');

SELECT * FROM MyTable1;

INSERT into MyTable1
(name)
VALUES
('hello2');
