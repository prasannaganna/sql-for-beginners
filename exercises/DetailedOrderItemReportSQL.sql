-- Write a SQL query below --
SELECT 
    oi.order_id,
    p.name AS product_name,
    oi.quantity,
    TRIM(TRAILING '.00' FROM oi.price) AS price
FROM order_items oi
JOIN products p
ON oi.product_id = p.id
WHERE oi.quantity > 1
ORDER BY oi.order_id ASC;