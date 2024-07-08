--Calculate the percentage contribution of each pizza type to total revenue.
WITH revenue_by_pizza_type AS (
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
)
SELECT 
  name, 
  ROUND(revenue, 2) AS revenue, 
  ROUND((revenue / (SELECT SUM(revenue) FROM revenue_by_pizza_type)) * 100, 2) AS percentage_contribution
FROM 
  revenue_by_pizza_type
ORDER BY 
  revenue DESC;