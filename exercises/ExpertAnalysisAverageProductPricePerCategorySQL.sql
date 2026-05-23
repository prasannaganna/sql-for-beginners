-- Write a SQL query below --
SELECT 
    category_id,
    CAST(AVG(price) AS DECIMAL(10,2)) AS avg_price
FROM products
GROUP BY category_id
ORDER BY avg_price DESC;