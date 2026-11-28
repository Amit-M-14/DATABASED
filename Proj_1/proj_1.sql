CREATE DATABASE library;
USE library;

CREATE TABLE books(
book_id INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
author_name VARCHAR(50),
price INT CHECK (price > 0),
stock INT CHECK (stock >= 0)
);

INSERT INTO books (book_id, title, author_name, price, stock)
VALUE
(101, 'Lord of the Mysteries', 'Cuttlefish that loves to dive', 1000, 14),
(102, 'Dragon Ball', 'Akira Toriyama', 1200, 78),
(103, 'Naruto', 'Mashashi Kishimoto', 1001, 56);

SELECT * FROM books WHERE price > 1000;

UPDATE books
SET stock = 100
WHERE book_id = 103;

INSERT INTO books(book_id, title, author_name, price, stock)
VALUE
(104, 'Steel Ball Run', 'Hirohiko Araki', 1400, 80);

UPDATE books
SET stock = 78
WHERE book_id = 101;

SELECT COUNT(*) FROM books WHERE Stock >= 50;