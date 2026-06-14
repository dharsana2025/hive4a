
Use sales_analytics;

SELECT order_date, region, SUM(sales) as daily_sales 
FROM sales_clean
GROUP BY order_date, region 
order by order_date, daily_sales desc;

