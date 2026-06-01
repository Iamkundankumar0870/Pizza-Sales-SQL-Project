-- Identify the most common pizza size ordered.

SELECT 
    a.size, COUNT(b.Order_id) AS Total_orders
FROM
    pizzas AS a
        JOIN
    orders_details AS b ON a.Pizza_id = b.Pizza_id
GROUP BY size
ORDER BY Total_orders DESC
LIMIT 1;




