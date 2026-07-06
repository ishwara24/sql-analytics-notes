-- DAY 09: COMMON TABLE EXPRESSIONS (CTE)

----------------------------------------------------
-- Example 1
-- Average sales by category

WITH category_sales AS
(
    SELECT
        category,
        AVG(sales) AS avg_sales
    FROM orders
    GROUP BY category
)

SELECT *
FROM category_sales;

----------------------------------------------------
-- Example 2
-- Categories with average sales > 1000

WITH category_sales AS
(
    SELECT
        category,
        AVG(sales) AS avg_sales
    FROM orders
    GROUP BY category
)

SELECT *
FROM category_sales
WHERE avg_sales > 1000;

----------------------------------------------------
-- Example 3
-- Total profit by region

WITH regional_profit AS
(
    SELECT
        region,
        SUM(profit) AS total_profit
    FROM orders
    GROUP BY region
)

SELECT *
FROM regional_profit
ORDER BY total_profit DESC;