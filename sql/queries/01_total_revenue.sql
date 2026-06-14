
use sales_analytics;

select product_category ,round(sum(sales),0) as total_sales,round( sum(profit),0) as profit ,
round(count(distinct order_id),2) as total_orders from sales_clean group by product_category ;

