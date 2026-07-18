-- Session 1

-- Tasks
-- 1. Install MySQL Community Server on your computer and take a screenshot of the MySQL installer completion window.
-- 2. Open MySQL Workbench or DB Browser, connect to your local MySQL server, and create a new database called music_streaming_db.
	CREATE DATABASE music_streaming_db;
-- 3. Write the SQL command to create a new database named food_delivery_db and execute it in your SQL Workbench or DB Browser.<br><br><em><strong>Hint:</strong> Use the CREATE DATABASE statement.</em>
	CREATE DATABASE food_delivery_db;
-- 4. List 3 differences between MySQL and PostgreSQL in terms of features or use cases, and give one example of a popular app or company that uses each.
	-- Feature								MySQL									PostgreSQL
--  1.Performance			Faster for simple read-heavy web applications.		Better for complex queries and large datasets.
--  2.Advanced Features		Basic SQL features, easier for beginners.			Supports advanced features like JSON, window
-- 																				functions, CTEs, and custom data types.
-- 3.Best Use Cases			Websites, blogs, e-commerce, and content 			Enterprise applications, financial systems, 
-- 							management systems.									GIS, and data analytics.