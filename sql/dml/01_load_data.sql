USE sales_analytics;

LOAD DATA LOCAL INPATH '/tmp/store.csv'
INTO TABLE sales;

SELECT order_date, COUNT(*) as record_count
FROM sales
GROUP BY order_date;
