-- DAY 08: WINDOW FUNCTIONS

----------------------------------------------------
-- ROW_NUMBER()
-- Gives every row a unique number

SELECT
    category,
    product_name,
    sales,
    ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY sales DESC
    ) AS row_num
FROM products;

----------------------------------------------------
-- RANK()
-- Same rank for ties, skips numbers

SELECT
    category,
    product_name,
    sales,
    RANK() OVER (
        PARTITION BY category
        ORDER BY sales DESC
    ) AS sales_rank
FROM products;

----------------------------------------------------
-- DENSE_RANK()
-- Same rank for ties, no skipped numbers

SELECT
    category,
    product_name,
    sales,
    DENSE_RANK() OVER (
        PARTITION BY category
        ORDER BY sales DESC
    ) AS dense_rank
FROM products;