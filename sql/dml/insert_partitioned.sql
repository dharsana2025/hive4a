
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;


USE sales_analytics;
INSERT INTO TABLE sales PARTITION (order_date)
SELECT 
    row_id, order_id, ship_date, ship_mode, customer_id,
    customer_name, segment, country, city, state, postal_code,
    region, product_id, product_category, sub_category, product_name,
    sales, quantity, discount, profit, order_date
FROM  sales_staging

