-- DAY 06: SUBQUERIES

-- Orders with sales higher than average sales
SELECT *
FROM orders
WHERE sales >
(
    SELECT AVG(sales)
    FROM orders
);

----------------------------------------------------

-- Customers who made above-average profit orders
SELECT customer_id, profit
FROM orders
WHERE profit >
(
    SELECT AVG(profit)
    FROM orders
);

----------------------------------------------------

-- Categories with total sales above overall average
SELECT category, SUM(sales) AS total_sales
FROM orders
GROUP BY category
HAVING SUM(sales) >
(
    SELECT AVG(sales)
    FROM orders
);