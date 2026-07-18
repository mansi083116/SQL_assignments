-- Session 2

-- Task
-- 1.Open your SQL editor and run a query to select all columns from a table named restaurants using SELECT * FROM restaurants;.
USE food_delivery_db;
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(30)
);

INSERT INTO restaurants (restaurant_id, name, rating, city)
VALUES
(1, 'Spice Hub', 4.5, 'Ahmedabad'),
(2, 'Pizza Point', 4.2, 'Surat'),
(3, 'Burger King', 4.0, 'Rajkot'),
(4, 'Dragon Wok', 4.3, 'Vadodara'),
(5, 'South Delight', 4.6, 'Bhavnagar');

SELECT * FROM restaurants;

-- 2.Write an SQL query to display only the name and rating columns from the table zomato_reviews.
CREATE TABLE zomato_reviews (
    review_id INT PRIMARY KEY,
    name VARCHAR(50),
    rating DECIMAL(2,1),
    reviewer VARCHAR(50)
);

INSERT INTO zomato_reviews (review_id, name, rating, reviewer)
VALUES
(1, 'Spice Hub', 4.5, 'Amit'),
(2, 'Pizza Point', 4.2, 'Neha'),
(3, 'Burger King', 4.0, 'Rahul'),
(4, 'Dragon Wok', 4.3, 'Priya'),
(5, 'South Delight', 4.6, 'Karan');

SELECT name,rating FROM zomato_reviews;

-- 3.Write an SQL query to select the movie_name and release_year columns from a table called movies, but rename movie_name as 'Title' and release_year as 'Year Released' in the output using the AS keyword.
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    release_year INT,
    genre VARCHAR(50)
); 

INSERT INTO movies (movie_id, movie_name, release_year, genre)
VALUES
(1, '3 Idiots', 2009, 'Comedy'),
(2, 'Dangal', 2016, 'Sports'),
(3, 'Bahubali', 2015, 'Action'),
(4, 'PK', 2014, 'Drama');
 SELECT  movie_name as Title , release_year as Year_Released FROM movies;
-- 4.In a table called products, write an SQL query that selects all columns and add a comment in your SQL code explaining what the query does.<br><br><em><strong>Hint:</strong> Use -- to write a single-line comment above your query.</em>
	CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    category VARCHAR(50)
);

INSERT  INTO products VALUES
(1, 'Laptop', 55000.00, 'Electronics'),
(2, 'Mouse', 700.00, 'Electronics'),
(3, 'Notebook', 120.00, 'Stationery'),
(4, 'Water Bottle', 350.00, 'Home'),
(5, 'Headphones', 1800.00, 'Electronics');

-- This query displays all columns and all records from the products table.
SELECT * FROM products;

