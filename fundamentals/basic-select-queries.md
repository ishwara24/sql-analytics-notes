# SQL Analytics Notes

This repository contains structured SQL notes and query patterns focused on **data analytics use cases**, not generic syntax.

The goal is to build strong SQL fundamentals that support:
- Business analysis
- Reporting
- Data-driven decision-making

This repo will grow incrementally through daily, practical commits.
# Basic SELECT Queries — Analytics Focus

## 📌 Purpose
The SELECT statement is the foundation of all analytical SQL work.
This document focuses on **how analysts use SELECT**, not just syntax.

---

## 🔹 Selecting Relevant Columns
Instead of using `SELECT *`, analysts explicitly select only required fields to:
- Improve query performance
- Improve readability
- Reduce noise

```sql
SELECT
    order_id,
    order_date,
    sales,
    profit
FROM orders;

---

## 🔹 Filtering Data with WHERE
Filtering allows analysts to focus on specific subsets of data that are relevant to a business question.

```sql
SELECT
    order_id,
    sales,
    profit
FROM orders
WHERE profit < 0;

Why this matters:
This query helps identify loss-making transactions that may be caused by excessive discounts, high costs, or pricing issues.

Additional examples:
-- Filter orders from a specific year
SELECT
    order_id,
    order_date,
    sales
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025;

-- Filter high-value orders
SELECT
    order_id,
    customer_id,
    sales
FROM orders
WHERE sales > 10000;

## 🔹 Sorting Results with ORDER BY

Sorting data helps analysts quickly surface the most important records.

SELECT
    order_id,
    sales,
    profit
FROM orders
ORDER BY profit ASC;


Why this matters:
Sorting by profit in ascending order immediately highlights the worst-performing orders, enabling faster root-cause analysis.

Additional examples:
-- Highest revenue orders first
SELECT
    order_id,
    sales
FROM orders
ORDER BY sales DESC;

-- Most recent orders first
SELECT
    order_id,
    order_date,
    sales
FROM orders
ORDER BY order_date DESC;
