-- Session 5

-- Tasks
-- 1. Write an SQL query using the DISTINCT keyword to find all unique payment methods used in the orders table of a food delivery app database.
USE food_delivery_db;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    payment_method VARCHAR(20),
    total_amount DECIMAL(10,2)
);
INSERT INTO orders (order_id, customer_name, payment_method, total_amount)
VALUES
(1, 'Amit', 'Cash', 350.00),
(2, 'Neha', 'UPI', 420.00),
(3, 'Rahul', 'Card', 280.00),
(4, 'Priya', 'UPI', 560.00),
(5, 'Karan', 'Cash', 190.00),
(6, 'Riya', 'Card', 700.00),
(7, 'Vijay', 'Net Banking', 450.00);

SELECT DISTINCT payment_method
FROM orders; 
-- 2. Query the users table to list all cities where users have registered, but display each city only once and sort the result in alphabetical order (A-Z).
use task;
SELECT DISTINCT city
FROM users
order by city;
-- 3. Write an SQL query to select the top 5 most recent movie bookings from the bookings table, ordered by booking_date in descending order.
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    movie_name VARCHAR(100),
    booking_date DATE,
    seats INT
);

INSERT INTO bookings (booking_id, customer_name, movie_name, booking_date, seats)
VALUES
(1, 'Amit', '3 Idiots', '2026-07-10', 2),
(2, 'Neha', 'Dangal', '2026-07-12', 4),
(3, 'Rahul', 'Bahubali', '2026-07-15', 3),
(4, 'Priya', 'PK', '2026-07-17', 2),
(5, 'Karan', 'Shershaah', '2026-07-18', 5),
(6, 'Riya', 'Pathaan', '2026-07-19', 2),
(7, 'Vijay', 'Jawan', '2026-07-20', 1),
(8, 'Sneha', 'Pushpa', '2026-07-21', 3);

SELECT * FROM bookings
ORDER BY booking_date DESC
LIMIT 5;
-- 4. From a products table containing Flipkart-style product data (id, name, category, sold_count), write an SQL query to retrieve the 10 products with the highest sold_count, displaying only product name and sold_count, sorted from highest to lowest.<br><br><em><strong>Hint:</strong> Use ORDER BY and LIMIT together to achieve this.</em
SELECT product_name,sold_count
FROM products
ORDER BY price
limit 10;



