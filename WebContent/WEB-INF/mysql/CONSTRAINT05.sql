
CREATE TABLE MyTable13
(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
body VARCHAR(255) NOT NULL,
Inserted TIMESTAMP
);

CREATE TABLE MyTable14
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    inserted TIMESTAMP DEFAULT NOW()
    );
    
    DESC MyTable14;
    
    SELECT * FROM MyTable14;