-- DAY 07: HAVING

----------------------------------------------------
-- Example 1
-- Categories whose total sales exceed 10,000

SELECT
    category,
    SUM(sales) AS total_sales
FROM orders
GROUP BY category
HAVING SUM(sales) > 10000;

----------------------------------------------------
-- Example 2
-- Regions having more than 50 orders

SELECT
    region,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY region
HAVING COUNT(order_id) > 50;

----------------------------------------------------
-- Example 3
-- Categories with average profit greater than 200

SELECT
    category,
    AVG(profit) AS avg_profit
FROM orders
GROUP BY category
HAVING AVG(profit) > 200;

----------------------------------------------------
-- Example 4
-- Regions whose total profit is positive

SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
HAVING SUM(profit) > 0;