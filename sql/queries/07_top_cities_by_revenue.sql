USE sales_analytics;
SELECT 
    city,
    state,
    ROUND(SUM(sales), 2) as revenue,
    COUNT(DISTINCT order_id) as orders
FROM sales_clean
GROUP BY city, state
ORDER BY revenue DESC
LIMIT 10;
