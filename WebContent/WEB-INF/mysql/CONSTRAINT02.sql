CREATE TABLE MyTable9
(
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello');-- 반복 불가능 UNIQUE 사용해서 그런거임

INSERT INTO MyTable9
(name)
VALUES
('hello'); -- 반복 가능 id 공간은 그냥 null로 저장됨

SELECT * FROM MyTable9
-- WHERE id = NULL; -- NULL은 값이 아니여서 안됨
WHERE id is NULL;

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);

 