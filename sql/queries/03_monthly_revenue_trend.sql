USE sales_analytics;
SELECT 
    DATE_FORMAT(order_date, 'yyyy-MM') as month,
    ROUND(SUM(sales), 2) as revenue,
    COUNT(DISTINCT order_id) as orders
FROM sales_clean
GROUP BY DATE_FORMAT(order_date, 'yyyy-MM')
ORDER BY month;

