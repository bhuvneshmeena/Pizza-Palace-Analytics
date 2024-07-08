--Q5. List the top 5 most ordered pizza types along with their quantities.

SELECT TOP 5
    b.pizza_type_id AS pizza_type, 
    SUM(a.quantity) AS total_quantity
FROM 
    order_details a
LEFT JOIN 
    pizzas b ON a.pizza_id = b.pizza_id
GROUP BY 
    b.pizza_type_id
ORDER BY 
    SUM(a.quantity) DESC;