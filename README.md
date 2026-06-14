# Retail Sales Analysis using Hive SQL

## Project Overview

This project analyzes retail sales data using **Apache Hive** in a **Docker environment**. The objective is to solve business problems using Hive SQL and generate insights related to sales performance, customer behavior, product performance, and profitability.

This is an ongoing project and additional analysis will be added in future updates.

---

## Dataset

**Dataset Used:** Superstore Sales Dataset

### Key Columns Used

* Sales
* Profit
* Quantity
* Discount
* Region
* State
* City
* Customer Name
* Product Category
* Sub Category
* Product Name
* Order Date
* Ship Mode

---

## Business Analysis Performed

The following business questions were analyzed using Hive SQL:

1. Total Revenue Analysis
2. Total Orders and Customer Analysis
3. Monthly Revenue Trend
4. Revenue by Customer Segment
5. Top Customers by Sales
6. Best Selling Products Analysis
7. Regional Sales Performance
8. Delivery Days Analysis
9. Monthly Cohort Analysis

Detailed outputs are available in the **results/** folder.

---

## Hive Concepts Used

* CREATE DATABASE
* CREATE TABLE
* LOAD DATA
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE WHEN
* Date Functions
* Joins and Business Queries

---

## Project Structure

```text
hive4a/
│── data/
│── sql/
│   ├── ddl/
│   ├── dml/
│   └── queries/
│── results/
│── hive_execution_screenshots/
│── README.md
```

---

## Challenges Faced

* Configuring Hive in Docker environment
* Handling dataset loading issues in Hive
* Troubleshooting container-related problems
* Managing Hive query execution flow

---

## Future Improvements

This project is still under development. Future analysis may include:

* Advanced customer segmentation
* Profitability deep dive
* Product performance optimization
* Sales forecasting ideas
* Hive query optimization techniques

---

## Tools Used

**Apache Hive, Docker, SQL, Ubuntu, Git, GitHub**
