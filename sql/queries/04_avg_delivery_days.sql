USE  sales_analytics;
SELECT 
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 1) as avg_shipping_days,
    MIN(DATEDIFF(ship_date, order_date)) as min_shipping_days,
    MAX(DATEDIFF(ship_date, order_date)) as max_shipping_days
FROM sales_clean
WHERE ship_date IS NOT NULL;
