-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    A.name, SUM(OD.Qty) AS Qty
FROM
    pizza_types AS A
        JOIN
    pizzas AS B ON A.pizza_type_id = B.pizza_type_id
        JOIN
    orders_details AS OD ON OD.pizza_id = B.pizza_id
GROUP BY A.name
ORDER BY Qty DESC
LIMIT 5;


