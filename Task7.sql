-- Session 7
-- Tasks
-- 1. Write an SQL query to display the total number of orders placed by each user in a 'food_orders' table, grouped by user_id.
 SELECT count(order_id)as total_order,user_id
 FROM orders
 GROUP BY user_id;

-- 2. Using a 'transactions' table with columns (transaction_id, user_id, amount, payment_method), write an SQL query to show the total amount spent by each payment_method.
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(30)
);

INSERT INTO transactions (transaction_id, user_id, amount, payment_method)
VALUES
(1, 101, 250.00, 'UPI'),
(2, 102, 1200.00, 'Credit Card'),
(3, 101, 450.00, 'Cash'),
(4, 103, 800.00, 'UPI'),
(5, 104, 1500.00, 'Debit Card'),
(6, 102, 600.00, 'Credit Card'),
(7, 103, 300.00, 'Cash'),
(8, 101, 950.00, 'UPI');

 SELECT sum(amount),payment_method
 FROM  transactions
 GROUP BY payment_method;
-- 3. Given a 'movies' table with columns (movie_id, genre, box_office_collection), write an SQL query to display each genre and its total box_office_collection, but only show genres where the total collection is above 10 crore.<br><br><em><strong>Hint:</strong> Use GROUP BY and HAVING together to filter the aggregated results.</em>
SELECT genre ,sum(box_office_collection)
FROM movies
GROUP BY genre
HAVING sum(box_office_collection)>10;  
-- 4. Suppose you have a 'playlist' table with columns (playlist_id, user_id, song_id, duration). Write an SQL query to find users who have created playlists with a combined song duration of more than 2 hours (7200 seconds), showing user_id and total duration.

SELECT user_id,sum(duration)
FROM spotify_playlists
GROUP BY user_id
HAVING sum(duration)>7200
