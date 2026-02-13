-- DAY 02: ORDER BY + LIMIT

-- Sort by sales (highest first)
SELECT *
FROM orders
ORDER BY sales DESC;

-- Explanation:
-- DESC means highest to lowest

----------------------------------------------------

-- Sort by profit (lowest first)
SELECT *
FROM orders
ORDER BY profit ASC;

-- Explanation:
-- ASC means lowest to highest

----------------------------------------------------

-- Top 5 highest sales orders
SELECT *
FROM orders
ORDER BY sales DESC
LIMIT 5;

-- Explanation:
-- LIMIT restricts number of rows returned

----------------------------------------------------

-- Top 3 lowest profit orders
SELECT *
FROM orders
ORDER BY profit ASC
LIMIT 3;
