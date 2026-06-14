USE sales_analytics;
SELECT 
    segment,
    ROUND(SUM(sales), 2) as revenue,
    COUNT(DISTINCT customer_id) as customers,
    ROUND(AVG(sales), 2) as avg_order_value
FROM sales_clean
GROUP BY segment
ORDER BY revenue DESC;
