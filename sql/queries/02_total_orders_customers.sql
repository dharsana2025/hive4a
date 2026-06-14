USE sales_analytics;
SELECT 
    COUNT(DISTINCT order_id) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers
FROM sales_clean;
