WITH Q1 AS (
    SELECT
        'Q1. Retrieve the total number of orders placed' AS Question,
        a.total_orders AS Answer
    FROM (
        SELECT COUNT(order_id) AS total_orders FROM orders
    ) a
),
Q2 AS (
    SELECT
        'Q2. total revenue generated from pizza sales' AS Question,
        a.total_revenue AS Answer
    FROM (
        SELECT
            ROUND(SUM(b.price * a.quantity), 2) AS total_revenue
        FROM order_details a
        LEFT JOIN pizzas b ON a.pizza_id = b.pizza_id
    ) a
),
Q3 AS (
    SELECT
        'Q3. Identify the highest-priced pizza' AS Question,
        a.highest_price AS Answer
    FROM (
        SELECT
            round(MAX(price),2) AS highest_price
        FROM pizzas
    ) a
)

SELECT * FROM Q1
UNION ALL
SELECT * FROM Q2
UNION ALL
SELECT * FROM Q3
