-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category,
    ROUND(SUM(orders_details.Qty * pizzas.price) / (SELECT 
                    ROUND(SUM(orders_details.Qty * pizzas.price),
                                0) AS Total_sales
                FROM
                    orders_details
                        JOIN
                    pizzas ON orders_details.pizza_id = pizzas.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.Pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;

