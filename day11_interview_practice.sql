-- DAY 11: Interview Practice

----------------------------------------------------
-- Find the bottom 3 customers by total sales

SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY total_sales ASC
LIMIT 3;

----------------------------------------------------
-- Find the total profit for each category

SELECT
    category,
    SUM(profit) AS total_profit
FROM orders
GROUP BY category;

----------------------------------------------------
-- Find the average discount by region

SELECT
    region,
    AVG(discount) AS average_discount
FROM orders
GROUP BY region;

----------------------------------------------------
-- Find categories having total sales greater than 50000

SELECT
    category,
    SUM(sales) AS total_sales
FROM orders
GROUP BY category
HAVING SUM(sales) > 50000;