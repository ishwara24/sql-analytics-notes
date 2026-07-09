-- DAY 10: INTERVIEW QUESTION 1

----------------------------------------------------
-- Question 1
-- Find the top 5 customers by total sales.

SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

----------------------------------------------------
-- Question 2
-- Which category generated the highest total profit?

SELECT
    category,
    SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC
LIMIT 1;

----------------------------------------------------
-- Question 3
-- Find the average sales for each region.

SELECT
    region,
    AVG(sales) AS average_sales
FROM orders
GROUP BY region;