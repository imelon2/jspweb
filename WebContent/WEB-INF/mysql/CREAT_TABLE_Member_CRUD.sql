CREATE DATABASE Choi;
USE Choi;

CREATE TABLE Member (
	id VARCHAR(225),
	password VARCHAR(225),
	name VARCHAR(225),
	birth DATE,
	inserted TIMESTAMP
);

USE test;
SELECT * FROM Member;
