-- Write a SQL query below --
SELECT name,ROUNd(price,2) as price FROM products
ORDER BY price DESC
LIMIT 3;