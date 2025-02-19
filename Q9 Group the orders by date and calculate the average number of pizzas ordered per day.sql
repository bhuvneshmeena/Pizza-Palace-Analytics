--Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    o.date, 
    AVG(od.quantity) AS avg_pizzas_per_day
FROM 
    orders o
JOIN 
    order_details od ON o.order_id = od.order_id
GROUP BY 
    o.date
ORDER BY 
    o.date;