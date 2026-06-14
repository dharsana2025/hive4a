
use sales_analytics;
drop table  sales_clean;
CREATE TABLE if not exists sales_clean AS
SELECT 
    row_id,
    order_id,
    cast (ship_date as date)  as ship_date,  -- Convert date format
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    product_category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit,
    cast(order_date as date) as order_date
FROM sales
WHERE row_id IS NOT NULL 
  AND row_id != 'row_id'  -- Filter out header row
  AND order_date IS NOT NULL;
