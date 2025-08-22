CREATE DATABASE BookStore;
USE BookStore;

	-- CREATING A TABLE
CREATE TABLE books(
	book_id INT,
    title VARCHAR(100),
    author VARCHAR(50),
    genere VARCHAR(100),
    price DECIMAL(10,2),
    rating DECIMAL(2,1),
    published_year INT 
);

	-- INSERTING A DATA
INSERT INTO 
	books(book_id,title,author,genere,price,rating,published_year)
VALUES 
	(1, 'The Silent River', 'Ravi Kumar', 'Fiction', 350, 4.5, 2018),
	(2, 'Love in Paris', 'Anita Desai', 'Romance', 250, 4.2, 2015),
	(3, 'Science of Life', 'S. Sharma', 'Science', 600, 4.8, 2021),
	(4, 'History Revisited', 'A. Sen', 'History', 800, 4.3, 2010),
	(5, 'The Lost World', 'Arthur Conan', 'Fiction', 450, 3.9, 2005),
	(6, 'Philosophy 101', 'R. Reddy', 'Philosophy', 550, 4.6, 2017),
	(7, 'Modern Guide to Cooking', 'S. Gupta', 'Cooking', 300, 4.0, 2019),
	(8, 'The Comic King', 'Raj Verma', 'Comics', 150, 3.5, 2012),
	(9, 'Life Lessons', 'Deepak Mehta', 'Motivation', 400, 4.7, 2020),
	(10, 'The Tech Revolution', 'Nikhil Jain', 'Technology', 950, 4.9, 2022),
	(11, 'World of Wonders', 'K. Rao', 'Fiction', 200, 3.8, 2014),
	(12, 'Business Mastery', 'A. Sharma', 'Business', 700, 4.4, 2016),
	(13, 'Secrets of the Mind', 'Meera Nair', 'Psychology', 650, 4.5, 2019),
	(14, 'Ancient India', 'V. Iyer', 'History', 500, 4.1, 2008),
	(15, 'The Last Samurai', 'Ken Watanabe', 'Fiction', 300, 3.7, 2011),
	(16, 'Guide to Success', 'Swati Rao', 'Motivation', 280, 4.3, 2017),
	(17, 'Healthy Living', 'M. Kapoor', 'Health', 350, 4.6, 2020),
	(18, 'Comic Adventures', 'Ajay Dev', 'Comics', 180, 3.2, 2009),
	(19, 'Love & Life', 'Rekha Sharma', 'Romance', 420, 4.4, 2018),
	(20, 'AI for Beginners', 'S. Ramesh', 'Technology', 1200, 4.9, 2023);
    

-- RETRIVEING ALL THE DATA
SELECT *
FROM books;

		-- 1. Comparison Operator

-- Q1: List all books with a price greater than 500.
SELECT *
FROM books
WHERE price > 500;

-- Q2: Find books with rating less than 3.
SELECT *
FROM books
WHERE rating <4.0;

-- Q3: Show books where published year is not 2020.
SELECT *
FROM books 
WHERE published_year <>2020;

-- Q4: Get books that cost equal to 299.
SELECT * 
FROM books 
WHERE price =350;

		-- String Operators
        
-- Q5: Get books where the title starts with "The"
SELECT * 
FROM books
WHERE title LIKE "The%";

-- Q6: List books where author’s name ends with "n".
SELECT *
FROM books
WHERE author LIKE "%n";

-- Q7: Find books with "Love" anywhere in the title.
SELECT * 
FROM books
WHERE title LIKE "%Love%";

-- Q8: Show books where the genre is exactly "Fiction".
SELECT *
FROM books 
WHERE 
	genere LIKE "Fiction";
    
-- Q9: Find books where title has exactly 16 characters.
SELECT *
FROM books
WHERE 
	title LIKE "________________";

		-- 3. Logical Operators (AND, OR, NOT)
-- Q10: Find books where genre = 'Fiction' AND price < 360.
SELECT *
FROM books
WHERE 
	genere ="Fiction" and price<360;
    
-- Q11: List books where rating > 4.5 OR price < 200.
SELECT *
FROM books
WHERE 
	rating >4.5 or price < 200;

-- Q12: Show books where NOT genre = 'Fiction'.
SELECT *
FROM books
WHERE 
	NOT genere= "Fiction";
    
			-- 4. BETWEEN Operator
            
-- Q14: Get all books priced between 200 and 600.
SELECT * 
FROM books
WHERE 
	price BETWEEN 200 AND 600;
    
-- Q15: Show books published between 2010 and 2020.
SELECT *
FROM books
WHERE 
	published_year BETWEEN 2010 AND 2020;

-- Q16: Find books where rating is between 3.5 and 4.5.
SELECT *
FROM books
WHERE 
	rating BETWEEN 3.5 AND 4.5;
    
			-- 5. LIMIT & OFFSET
-- Q17: Show the top 5 most expensive books.
SELECT *
FROM books
ORDER BY
	price DESC
LIMIT 5;

-- Q18: List the top 10 cheapest books.
SELECT *
FROM books
ORDER BY 
	price ASC
limit 10;

-- Q19: Get the next 5 books after skipping the first 5 (ordered by price).
SELECT *
FROM books
ORDER BY 
	price ASC
LIMIT 5
OFFSET 5;

-- Q20: Show the 3rd to 7th highest-rated books.
SELECT *
FROM books
ORDER BY
	rating DESC
LIMIT 5
OFFSET 2;

		-- 6. Mixed Operators

-- Q21: Get all Fiction books with rating above 4.2 and price less than 400.
SELECT *
FROM books
WHERE
	rating >4.2 and price < 400;
    
-- Q22: Find books where author name starts with ‘A’ AND published between 2015–2022.
SELECT *
FROM books
WHERE 	
	author LIKE "A%"
    AND
	published_year between 2015 and 2022;

-- Q23: Show books where title contains "Life" OR "Guide".
SELECT *
FROM books
WHERE 
    title LIKE '%Life%'
    OR title LIKE '%Guide%';

-- Q24: List the top 5 Science books with price between 500–1000.
SELECT *
FROM books
WHERE 
	genere = "Science" AND 
	(price BETWEEN 500 AND 1000)
ORDER BY
	price DESC
LIMIT 5;

-- Q25: Get books where genre is either "History" or "FICTION" AND rating > 4.
SELECT *
FROM books
WHERE 
	genere IN ("Fiction","History")
    AND
	rating >4;
