--Determine the top 3 most ordered pizza types based on revenue for each pizza category.
WITH pizza_revenue AS (
  SELECT 
    pt.category, 
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
    pt.category, 
    pt.name
)
SELECT 
  category, 
  name, 
  ROUND(revenue, 2) AS revenue
FROM 
  (
    SELECT 
      category, 
      name, 
      revenue,
      ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue DESC) AS row_num
    FROM 
      pizza_revenue
  ) AS subquery
WHERE 
  row_num <= 3
ORDER BY 
  category, 
  revenue DESC;