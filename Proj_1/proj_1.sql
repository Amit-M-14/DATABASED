CREATE TABLE book(
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author_name VARCHAR(50),
    price INT CHECK(price>0),
    stock INT CHECK(stock>0)
);

INSERT INTO book(book_id,title,author_name,price,stock)
VALUES
(101, 'Lord of the Mysteries', 'Cuttlefish that loves diving', 500, 10),
(102, 'Dragon Ball', 'Akira Toriyama', 300, 15),
(103, 'Tower of God', 'SIU', 500, 20),
(104, 'One Piece', 'Eichiro Oda', 400, 12),
(105, 'Harry Potter:The Prisoner of Azkaban', 'JK Rowling', 600, 34);


SELECT * FROM book WHERE stock > 15;


SELECT * FROM book ORDER BY price desc;

UPDATE book
SET price = 1000
WHERE book_id = 102;

INSERT INTO book(book_id,title,author_name,price,stock)
VALUES
(106, 'CRETED TO GET DELETED', 'THE DELETER', 1, 1);

DELETE FROM book
WHERE book_id = 106;

SELECT COUNT(*) FROM book where price = 1000;