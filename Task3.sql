-- Session 3
USE task;
-- Tasks
-- 1. Write an SQL query to select all restaurants from a table named 'restaurants' where the rating is greater than or equal to 4.5.
 SELECT * FROM restaurants
 WHERE rating>=4.5;
-- 2. In a table called 'movies', filter and display only the movies released after 2020 and with genre 'Action' using the WHERE clause and AND operator.

 SELECT * FROM movies 
 WHERE release_year>2020 and genre="Action";
-- 3. Given a table 'products' with columns (id, name, price, category), write a query to find all products not in the 'Electronics' category or with a price less than 500.
SELECT product_id, product_name, price, category
FROM products
WHERE category <> 'Electronics'
OR price > 500;
-- 4. Write an SQL query for a table 'users' to show all users who are NOT from 'Ahmedabad' and have more than 1000 followers.<br><br><em><strong>Hint:</strong> Use the NOT operator combined with AND.</em>

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    city VARCHAR(50),
    followers INT
);

INSERT INTO users (user_id, username, city, followers)
VALUES
(1, 'Amit', 'Ahmedabad', 1500),
(2, 'Neha', 'Surat', 2200),
(3, 'Rahul', 'Rajkot', 900),
(4, 'Priya', 'Vadodara', 1800),
(5, 'Karan', 'Ahmedabad', 800),
(6, 'Riya', 'Bhavnagar', 1300);

SELECT
 * FROM users
 WHERE NOT city='Ahmedabad' and followers>1000;