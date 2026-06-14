CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;
DROP table sales; 
CREATE TABLE IF NOT EXISTS sales (
    row_id INT,
    order_id STRING,
    ship_date STRING,
    ship_mode STRING,
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    country STRING,
    city STRING,
    state STRING,
    postal_code STRING,
    region STRING,
    product_id STRING,
    product_category STRING,
    sub_category STRING,
    product_name STRING,
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(10,2),
    profit DECIMAL(10,2),
    order_date STRING
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = "\"",
    "escapeChar" = "\\"
)
STORED AS TEXTFILE;

SHOW TABLES;
