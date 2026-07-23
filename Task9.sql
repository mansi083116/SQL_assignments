-- Session 9

-- Tasks
-- 1. Create two tables, influencers and brands, with at least 3 sample rows each. Use a FULL OUTER JOIN to list all influencers and brands, showing influencer_name and brand_name, matching on city. If there is no match, display NULL for the missing side.<br><br><em><strong>Hint:</strong> Use LEFT JOIN, RIGHT JOIN, and UNION if your SQL dialect does not support FULL OUTER JOIN directly.</em>


SELECT i.influencer_name, b.brand_name
FROM influencers i
LEFT JOIN brands b
ON i.city = b.city

UNION

SELECT i.influencer_name, b.brand_name
FROM influencers i
RIGHT JOIN brands b
ON i.city = b.city;

CREATE TABLE influencers (
    influencer_id INT PRIMARY KEY,
    influencer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO influencers VALUES
(1,'Aarav','Mumbai'),
(2,'Diya','Ahmedabad'),
(3,'Karan','Delhi');

CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO brands VALUES
(101,'Nike','Mumbai'),
(102,'Puma','Bangalore'),
(103,'Zara','Delhi');

-- 2. Given a table called playlists with columns (id, playlist_name, parent_playlist_id), write a SELF JOIN query to display each playlist alongside its parent playlist's name, similar to how Spotify might nest playlists.


CREATE TABLE playlists (
    id INT PRIMARY KEY,
    playlist_name VARCHAR(50),
    parent_playlist_id INT
);

INSERT INTO playlists VALUES
(1,'Music',NULL),
(2,'Workout',1),
(3,'Travel',1),
(4,'Morning Vibes',2),
(5,'Road Trip',3);

SELECT
    c.playlist_name AS Playlist,
    p.playlist_name AS Parent_Playlist
FROM playlists c
LEFT JOIN playlists p
ON c.parent_playlist_id = p.id;

-- 3. Create two tables: users and offers. Write a CROSS JOIN query to generate all possible combinations of users and offers, displaying user_name and offer_title. Explain in a comment how this could be used for a Flipkart-style personalized offer campaign.
CREATE TABLE offers (
    offer_id INT PRIMARY KEY,
    offer_title VARCHAR(100)
);

INSERT INTO offers VALUES
(101,'10% OFF'),
(102,'Free Delivery'),
(103,'Buy 1 Get 1');

SELECT
    u.username,
    o.offer_title
FROM users u
CROSS JOIN offers o;

-- 4. You have an employees table with columns (id, name, manager_id). Write a SELF JOIN to display each employee's name along with their manager's name. Then, modify your query to only show employees who do not have a manager (i.e., top-level managers).

SELECT e.name, a.manager_id
FROM employees as e
LEFT JOIN employees as a
ON e.manager_id=a.id;

SELECT
    name,manager_id
FROM employees
WHERE manager_id IS NULL;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1,'Rohit',NULL),
(2,'Priya',1),
(3,'Aman',1),
(4,'Neha',2),
(5,'Kiran',2);

-- 5. Use ChatGPT or Copilot to help you write a SQL query that finds all pairs of users from a users table who live in the same city (excluding pairs where the user is compared with themselves). Paste the query and briefly describe how the AI helped you improve or debug it.
SELECT
    u1.username AS User1,
    u2.username AS User2,
    u1.city
FROM users u1
JOIN users u2
ON u1.city = u2.city
AND u1.user_id < u2.user_id;

