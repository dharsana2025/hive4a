USE sales_analytics;
-- Monthly cohort retention (simplified)
SELECT 
    DATE_FORMAT(first_order, 'yyyy-MM') as cohort_month,
    months_since_first,
    COUNT(DISTINCT customer_id) as customers,
    SUM(first_month_flag) as original_cohort_size
FROM (
    SELECT 
        customer_id,
        MIN(order_date) as first_order,
        order_date,
        MONTHS_BETWEEN(TRUNC(order_date, 'MM'), TRUNC(MIN(order_date), 'MM')) as months_since_first,
        CASE WHEN MIN(order_date) = MIN(order_date) OVER(PARTITION BY customer_id) THEN 1 ELSE 0 END as first_month_flag
    FROM sales_clean
    GROUP BY customer_id, order_date
) t
GROUP BY DATE_FORMAT(first_order, 'yyyy-MM'), months_since_first
ORDER BY cohort_month, months_since_first;
