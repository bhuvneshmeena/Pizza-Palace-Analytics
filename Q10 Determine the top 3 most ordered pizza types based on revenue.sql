--Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pt.name, 
    SUM(od.quantity * p.price) AS revenue
FROM 
    orders o
JOIN 
    order_details od ON o.order_id = od.order_id
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
JOIN 
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
    pt.name
ORDER BY 
    revenue DESC
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;