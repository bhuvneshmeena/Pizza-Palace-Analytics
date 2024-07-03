--Q7. Determine the distribution of orders by hour of the day.
SELECT 
    DATEPART(hour, time) AS hour, 
    COUNT(*) AS num_orders
FROM 
    orders
GROUP BY 
    DATEPART(hour, time)
ORDER BY 
    hour;