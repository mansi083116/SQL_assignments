-- Session 6

-- Tasks
-- 1. Write an SQL query using the SUM() function to calculate the total amount spent by users on food orders in a table food_orders (columns: order_id, user_id, amount) — imagine it's like Zomato's order history.
SELECT sum(total_amount)
FROM orders;
-- 2. Using the COUNT() function, find out how many songs a user has added to their playlist in a table spotify_playlists (columns: playlist_id, user_id, song_id).

CREATE TABLE spotify_playlists(
	playlist_id int,
    user_id int,
    song_id int,
    FOREIGN  KEY(song_id) REFERENCES songs(song_id)
);
INSERT INTO spotify_playlists (playlist_id, user_id, song_id)
VALUES
(1, 101, 1),
(2, 101, 3),
(3, 101, 5),
(4, 102, 2),
(5, 102, 4),
(6, 103, 1),
(7, 103, 6);
SELECT count(song_id) as count_song,user_id
FROM spotify_playlists
group by user_id;

-- 3. Write an SQL query to get the average rating given to a movie in a table bookmyshow_reviews (columns: review_id, movie_id, rating), and round the result to 1 decimal place using the ROUND() function.<br><br><em><strong>Hint:</strong> Use AVG() with ROUND() to format the output.</em>
CREATE TABLE bookmyshow_reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    rating DECIMAL(2,1)
);

INSERT INTO bookmyshow_reviews (review_id, movie_id, rating)
VALUES
(1, 101, 4.5),
(2, 101, 5.0),
(3, 101, 3.5),
(4, 102, 4.0),
(5, 102, 4.5),
(6, 103, 3.0),
(7, 103, 4.0),
(8, 103, 5.0);
SELECT ROUND(AVG(rating), 1) AS average_rating
FROM bookmyshow_reviews;

-- 4. Find the minimum and maximum transaction values for a user from a table paytm_transactions (columns: txn_id, user_id, amount) — show both the smallest and largest transaction amounts.

CREATE TABLE paytm_transactions (
    txn_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO paytm_transactions (txn_id, user_id, amount)
VALUES
(1, 101, 250.00),
(2, 101, 1200.00),
(3, 101, 450.00),
(4, 102, 3000.00),
(5, 102, 150.00),
(6, 103, 750.00),
(7, 103, 5000.00),
(8, 101, 80.00);
SELECT max(amount), min(amount)
FROM  paytm_transactions;
-- 5. Given a table myntra_orders (columns: order_id, user_id, total_price), write an SQL query to display the total number of orders, the average order value (rounded to 2 decimals), and the highest order value for each user_id.<br><br><em><strong>Constraint:</strong> Use GROUP BY to get results per user.</em>

CREATE TABLE myntra_orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    total_price DECIMAL(10,2)
);

INSERT INTO myntra_orders (order_id, user_id, total_price)
VALUES
(1, 101, 1299.00),
(2, 101, 799.50),
(3, 101, 2499.00),
(4, 102, 999.00),
(5, 102, 1599.99),
(6, 103, 499.00),
(7, 103, 2199.00),
(8, 103, 1499.50),
(9, 104, 899.00),
(10, 104, 1799.00);

SELECT COUNT(order_id),ROUND(AVG(total_price),2),max(total_price) 
FROM myntra_orders
group by user_id; 



