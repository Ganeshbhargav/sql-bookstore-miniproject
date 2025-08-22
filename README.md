# SQL Mini Project – Bookstore Database

This project is a **mini SQL-based database** designed to manage books in a bookstore.  
It includes queries to practice **SQL concepts** such as filtering, sorting, pattern matching, and aggregation.

---

## 🚀 Features

- Manage **books** with attributes like `book_id`, `title`, `author`, `genre`, `price`, `rating`.
- Perform SQL operations using:
  - **Comparison operators** (`<`, `>`, `=`, `<>`, `BETWEEN`)
  - **Logical operators** (`AND`, `OR`, `NOT`)
  - **String operators** (`LIKE`, `%`, `_`)
  - **Sorting & Limiting** (`ORDER BY`, `LIMIT`)
- Practical queries such as:
  - Finding books in a **price range**
  - Listing **top-rated books**
  - Searching books by **keywords**
  - Filtering by **genre**

---

## 🛠️ Database Schema

```sql
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(30),
    price DECIMAL(6,2),
    rating DECIMAL(2,1)
);
```

## 📊 Sample Data
```sql
INSERT INTO books (book_id, title, author, genre, price, rating) VALUES
(1, 'The Science of Life', 'H. Spencer', 'Science', 750, 4.5),
(2, 'Life Hacks Guide', 'A. Sharma', 'Self-Help', 450, 4.0),
(3, 'Modern Physics', 'R. Feynman', 'Science', 950, 4.8),
(4, 'Cooking Made Easy', 'S. Kapoor', 'Cooking', 600, 3.9),
(5, 'A Guide to Success', 'B. Johnson', 'Motivation', 800, 4.2);
```

## 🔎 Example Queries 

1. Basic Selection & Filtering
   ```sql
     --  List all books with a price greater than 500.
    SELECT *
    FROM books
    WHERE price > 500;
   
     -- Find books with rating less than 4.
    SELECT *
    FROM books
    WHERE rating < 4;
   ```
2. String Pattern Matching (LIKE)
```sql
    -- Get books where the title starts with "The".
        SELECT * 
        FROM books
        WHERE title LIKE 'The%';

    -- Show books where author’s name ends with 'n'.
        SELECT *
      FROM books
      WHERE author LIKE '%n';
 ```
3. Logical Operators (AND / OR / NOT)
```sql
    --  Find Fiction books with price < 400 AND rating > 4.2.
      SELECT *
      FROM books
      WHERE genre = 'Fiction'
        AND price < 400
        AND rating > 4.2;
      
      --  List books where rating > 4.5 OR price < 200.
      SELECT *
      FROM books
      WHERE rating > 4.5 OR price < 200;
```
4. BETWEEN (Range Queries)
```sql
      --  Show books priced between 200 and 600.
          SELECT * 
          FROM books
          WHERE price BETWEEN 200 AND 600;
          
     -- Show books published between 2010 and 2020.
          SELECT *
          FROM books
          WHERE published_year BETWEEN 2010 AND 2020;
```
5. Sorting & Limiting Results
```sql
      -- Show the top 5 most expensive books.
      SELECT *
      FROM books
      ORDER BY price DESC
      LIMIT 5;
      
      -- Show the next 5 cheapest books (skip first 5).
      SELECT *
      FROM books
      ORDER BY price ASC
      LIMIT 5 OFFSET 5;
      
      -- Show the 3rd to 7th highest-rated books.
      SELECT *
      FROM books
      ORDER BY rating DESC
      LIMIT 5 OFFSET 2;
```

7. Mixed Queries (Real-world)
```sql
      -- Find Science books with price between 500–1000 (top 5).
      SELECT *
      FROM books
      WHERE genre = 'Science'
        AND price BETWEEN 500 AND 1000
      ORDER BY price DESC
      LIMIT 5;
      
      -- Show books where title contains "Life" OR "Guide".
      SELECT *
      FROM books
      WHERE title LIKE '%Life%'
         OR title LIKE '%Guide%';
      
      -- Get books where genre is History OR Fiction AND rating > 4.
      SELECT *
      FROM books
      WHERE genre IN ('History','Fiction')
        AND rating > 4;
```
---
## Sample Query Outputs  

| Query | Output |
|-------|--------|
| 3rd to 7th highest-rated books | <img src="./assets/3rd to 7th highest-rated books.png" width="400"> |
| Next 5 cheapest books (skip first 5) | <img src="./assets/Next 5 cheapest books (skip first 5).png" width="400"> |

---
## ▶️ How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/Ganeshbhargav/sql-bookstore-miniproject.git
   cd sql-bookstore-miniproject

2. Open MySQL and run the .sql files to create database and tables.

3. Run the queries in your preferred SQL client (MySQL Workbench, VS Code extension, or CLI).

4. Check the screenshots in the assets/ folder for sample query outputs.

---
 ## 💻 Tech Stack
1. MySQL (or any SQL RDBMS)
2. SQL Workbench / Command Line
---

## 👨‍💻 Author

  **Ganesh Bhargav Arani**
    - 📧 [Email](ganeshbhargav619@gmail.com]) 
    - 🔗 [GitHub](https://github.com/Ganeshbhargav)
  
