-- Write a SQL query below --
SELECT count(order_status) AS total 
FROM orders 
WHERE order_status = 'Delivered';