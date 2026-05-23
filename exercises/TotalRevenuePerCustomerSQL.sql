-- Write a SQL query below --
SELECT 
    c.first_name,
    c.last_name,
    TRIM(TRAILING '.00' FROM SUM(o.total_amount)) AS total_revenue
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name, c.last_name
ORDER BY SUM(o.total_amount) DESC;