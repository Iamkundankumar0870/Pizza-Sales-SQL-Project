-- Group the orders by date and calculate the average number of pizzas ordered per day.


SELECT 
    round(AVG(Total_order),0) As Avg
FROM
    (SELECT 
        A.Order_date AS Date, SUM(B.Qty) AS Total_order
    FROM
        orders AS A
    JOIN orders_details AS B ON A.order_id = B.Order_id
    GROUP BY Date) AS daily;
     
     
     
     
     
    
    
    
    