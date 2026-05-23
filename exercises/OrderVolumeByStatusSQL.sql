-- Write a SQL query below --
SELECT   order_status, count(order_status) as order_count 
 FROM  orders
 Group BY order_status
ORDER BY order_count DESC;