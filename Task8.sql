-- Session 8

-- Tasks

-- 1. Create two tables in your SQL database: Users (user_id, username, city) and Orders (order_id, user_id, product, amount). Insert at least 3 users and 5 orders, making sure some users have no orders.

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
INSERT INTO Users VALUES
(1, 'Mansi', 'Ahmedabad'),
(2, 'Riya', 'Surat'),
(3, 'Amit', 'Rajkot');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 50000),
(102, 1, 'Mouse', 800),
(103, 2, 'Keyboard', 1500),
(104, 2, 'Monitor', 12000),
(105, 1, 'Headphones', 2500);



-- 2. Write an SQL query using INNER JOIN to list all usernames and their ordered products, showing only users who have placed at least one order.
SELECT username,product
FROM users AS u
INNER JOIN orders AS o
ON u.user_id = o.user_id;

-- 3. Write an SQL query using LEFT JOIN to display all usernames along with their ordered products. For users who haven't placed any orders, show NULL for the product.
SELECT username,product
FROM users AS u
LEFT JOIN orders AS o
ON u.user_id = o.user_id;

-- 4. Write an SQL query using RIGHT JOIN to show all orders and the corresponding username for each order. If an order has a user_id that doesn't exist in the Users table, display NULL for the username.<br><br><em><strong>Hint:</strong> Try deleting one user and keeping their order to test this case.</em>
SELECT o.order_id, u.username, o.product
FROM users AS u
RIGHT JOIN orders AS o
ON u.user_id = o.user_id;

-- 5. Suppose you want to analyze food delivery data like Zomato. Create a CustomerSegments table (segment_id, segment_name), and link it to Users with a foreign key. Write an SQL query to show each username, their segment name, and total order amount (use JOINs as needed).

SELECT username, segment_name,sum(amount)
FROM users as u
JOIN orders as o
ON u.user_id=o.user_id
JOIN CustomerSegments as c
ON u.segment_id= c.segment_id
GROUP BY u.username, c.segment_name;



CREATE TABLE CustomerSegments (
    segment_id INT PRIMARY KEY,
    segment_name VARCHAR(50)
);

INSERT INTO CustomerSegments VALUES
(1,'Silver'),
(2,'Gold'),
(3,'Platinum');

ALTER TABLE Users
ADD segment_id INT;

ALTER TABLE Users
ADD CONSTRAINT fk_segment
FOREIGN KEY (segment_id)
REFERENCES CustomerSegments(segment_id);

-- UPDATE Users
-- SET segment_id = 1
-- WHERE user_id = 1;

-- UPDATE Users
-- SET segment_id = 2
-- WHERE user_id = 2;

-- -- UPDATE Users
-- -- SET segment_id = 3
-- -- WHERE user_id = 3;
