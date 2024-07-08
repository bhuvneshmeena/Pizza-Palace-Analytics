--Q6. Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    c.category, 
    SUM(a.quantity) AS total_quantity
FROM 
    order_details a
LEFT JOIN 
    pizzas b ON a.pizza_id = b.pizza_id
LEFT JOIN 
    pizza_types c ON b.pizza_type_id = c.pizza_type_id
GROUP BY 
    c.category
ORDER BY 
    SUM(a.quantity) DESC;
