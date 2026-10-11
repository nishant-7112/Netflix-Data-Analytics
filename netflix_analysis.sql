USE netflix_db;

DESCRIBE netflix_customers;

-- 1. Preview the dataset
SELECT *
FROM netflix_customers
LIMIT 10;

-- 2. Total number of customer records
SELECT COUNT(*) AS total_records
FROM netflix_customers;

-- 3. Unique customers
SELECT COUNT(DISTINCT Customer_ID) AS unique_customers
FROM netflix_customers;

-- 4. Customer distribution by content type
SELECT
    Content_Type,
    COUNT(*) AS total_records
FROM netflix_customers
GROUP BY Content_Type
ORDER BY total_records DESC;

-- 5. Most common genres
SELECT
    Genre,
    COUNT(*) AS total_records
FROM netflix_customers
GROUP BY Genre
ORDER BY total_records DESC;

-- 6. Average customer age
SELECT ROUND(AVG(Age), 2) AS average_age
FROM netflix_customers;

-- 7. Most frequently appearing titles
SELECT
    Title,
    COUNT(*) AS appearances
FROM netflix_customers
GROUP BY Title
ORDER BY appearances DESC
LIMIT 10;