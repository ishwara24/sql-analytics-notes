-- DAY 05: CASE WHEN (Business Logic)

-- Categorize orders by sales value
SELECT
    order_id,
    sales,
    CASE
        WHEN sales >= 1000 THEN 'High Value'
        ELSE 'Low Value'
    END AS order_type
FROM orders;

----------------------------------------------------

-- Profitability classification
SELECT
    order_id,
    profit,
    CASE
        WHEN profit > 0 THEN 'Profitable'
        WHEN profit = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS profit_status
FROM orders;

----------------------------------------------------

-- Category performance label
SELECT
    category,
    AVG(profit) AS avg_profit,
    CASE
        WHEN AVG(profit) > 200 THEN 'Strong'
        ELSE 'Needs Improvement'
    END AS performance_label
FROM orders
GROUP BY category;