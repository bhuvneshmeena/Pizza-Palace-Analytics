--Join relevant tables to find the category-wise distribution of pizzas.
SELECT pt.category, COUNT(p.pizza_id) AS count
FROM pizzas p
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY count DESC;