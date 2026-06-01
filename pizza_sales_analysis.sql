-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name,revenue from
(select category, name, revenue,
rank() over(partition by category order by revenue) as rn
from
(select pizza_types.category,pizza_types.name,
sum(orders_details. Qty * pizzas. Price) as revenue from pizza_types
join pizzas
On pizza_types. pizza_type_id = pizzas. pizza_type_id
join orders_details
On pizzas.pizza_id = orders_details.Pizza_id
group by pizza_types.category,pizza_types.name) as a) as b
where rn <= 3;


