USE sales_analytics;
SELECT
    product_name,
    SUM(quantity) as total_units_sold,
    ROUND(SUM(sales), 2) as revenue
FROM sales_clean
GROUP BY product_name
ORDER BY total_units_sold DESC
LIMIT 5;
