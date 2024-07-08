--Analyze the cumulative revenue generated over time.
SELECT 
  date, 
  ROUND(SUM(revenue) OVER (ORDER BY date), 2) AS cumulative_revenue
FROM 
  (
    SELECT 
      o.date, 
      SUM(od.quantity * p.price) AS revenue
    FROM 
      orders o
    JOIN 
      order_details od ON o.order_id = od.order_id
    JOIN 
      pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY 
      o.date
  ) AS subquery
ORDER BY 
  date;