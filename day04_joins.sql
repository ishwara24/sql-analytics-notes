-- DAY 04: JOINS

-- INNER JOIN: Only matching records
SELECT
    o.order_id,
    c.customer_name,
    o.sales
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- Explanation:
-- Shows orders only where a matching customer exists

----------------------------------------------------

-- LEFT JOIN: Keep all orders
SELECT
    o.order_id,
    c.customer_name,
    o.sales
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id;

-- Explanation:
-- Keeps all orders even if customer info is missing

----------------------------------------------------

-- Sales by region using JOIN
SELECT
    c.region,
    SUM(o.sales) AS total_sales
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.region;