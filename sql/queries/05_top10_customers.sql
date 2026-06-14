USE sales_analytics;
SELECT customer_id,customer_name, ROUND(SUM(sales), 2) as lifetime_value,COUNT(DISTINCT order_id) as total_orders,
ROUND(AVG(sales), 2) as avg_order_value FROM sales_clean
GROUP BY customer_id,customer_name ORDER BY round(sum(sales),2)  DESC   LIMIT 10;
