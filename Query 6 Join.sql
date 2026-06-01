-- Join the necessary tables to find the total quantity of each pizza category ordered.
	
   SELECT 
    A.category, SUM(OD.Qty) AS Qty
FROM
    pizza_types AS A
        JOIN
    pizzas AS B ON A.pizza_type_id = B.pizza_type_id
        JOIN
    orders_details AS OD ON OD.pizza_id = B.Pizza_id
GROUP BY A.category
ORDER BY Qty DESC;


