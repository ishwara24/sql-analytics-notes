-- DAY 03: GROUP BY + AGGREGATIONS

-- Total sales by category
SELECT
    category,
    SUM(sales) AS total_sales
FROM orders
GROUP BY category;

----------------------------------------------------

-- Number of orders per region
SELECT
    region,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY region;

----------------------------------------------------

-- Average profit by category
SELECT
    category,
    AVG(profit) AS avg_profit
FROM orders
GROUP BY category;

----------------------------------------------------

-- Total profit by region
SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region;
