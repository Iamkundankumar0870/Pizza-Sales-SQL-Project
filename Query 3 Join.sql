-- Identify the highest-priced pizza.


SELECT 
    A.pizza_type_id, B.price
FROM
    pizza_types AS A
        JOIN
    pizzas AS B ON A.pizza_type_id = B.pizza_type_id
ORDER BY price DESC
LIMIT 1



