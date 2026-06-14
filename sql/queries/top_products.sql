USE sales_analytics; 
SELECT product_name, SUM(profit) as total_profit FROM sales_clean 
GROUP BY product_name 
ORDER BY total_profit DESC LIMIT 10;
