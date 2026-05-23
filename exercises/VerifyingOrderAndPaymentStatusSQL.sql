-- Write a SQL query below --
SELECT 
    id AS order_id,
    CAST(total_amount AS DECIMAL(10,2)) AS total_amount,
    payment_status
FROM orders
WHERE order_status = 'Shipped'
OR order_status = 'In Transit'
ORDER BY total_amount DESC;