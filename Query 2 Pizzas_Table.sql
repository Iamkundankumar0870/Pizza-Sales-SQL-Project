-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(orders_details.qty * pizzas.price),
            2) AS Total_revenue
FROM
    orders_details
        JOIN
    pizzas ON orders_details.Pizza_id = pizzas.pizza_id;

