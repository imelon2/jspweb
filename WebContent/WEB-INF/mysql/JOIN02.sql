USE test;

-- https://joins.spathon.com/

CREATE TABLE Users (
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes (
	userId INT,
    `like` VARCHAR(255)
);

INSERT INTO Users (id, name) VALUES (1, 'Patrik');
INSERT INTO Users (id, name) VALUES (2, 'Albert');
INSERT INTO Users (id, name) VALUES (3, 'Maria');
INSERT INTO Users (id, name) VALUES (4, 'Darwin');
INSERT INTO Users (id, name) VALUES (5, 'Elizabeth');

INSERT INTO Likes (userId, `like`)  VALUES (3, 'Stars');
INSERT INTO Likes (userId, `like`)  VALUES (1, 'Climbing');
INSERT INTO Likes (userId, `like`)  VALUES (1, 'Code');
INSERT INTO Likes (userId, `like`)  VALUES (6, 'Rugby');
INSERT INTO Likes (userId, `like`)  VALUES (4, 'Apples');

SELECT * FROM Users;
SELECT * FROM Likes;

SELECT * FROM Users, Likes;

SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId;

SELECT * FROM Users Inner JOIN Likes ON Users.id = Likes.userId;

SELECT * FROM Users Left JOIN Likes ON Users.id = Likes.userId;

SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId;

SELECT * FROM Users FULL JOIN Likes ON Users.id = Likes.userId;

-- 좋아하는 것이 없는 사용자
SELECT * FROM Users LEFT JOIN Likes  ON Users.Id = Likes.userid
Where Likes.userId IS NULL;

-- 사용자들이 좋아하지 않는것
SELECT * FROM Users RIGHT JOIN Likes  ON Users.Id = Likes.userid
Where Users.id IS NULL;