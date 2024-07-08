--Q4 Identify the most common pizza size ordered.
SELECT TOP 1
    size, 
    COUNT(size) AS count_size
FROM 
    order_details a
LEFT JOIN 
    pizzas b ON a.pizza_id = b.pizza_id
GROUP BY 
    size
ORDER BY 
    COUNT(size) DESC;