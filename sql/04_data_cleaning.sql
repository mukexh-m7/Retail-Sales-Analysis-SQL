
USE retail_sales_analysis;


-- Check duplicate transaction IDs

SELECT
    transactions_id,
    COUNT(*) AS duplicate_count
FROM retail_sales
GROUP BY transactions_id
HAVING COUNT(*) > 1;



-- Find invalid ages

SELECT *
FROM retail_sales
WHERE age < 18 OR age > 100;



-- Check zero or negative quantities

SELECT *
FROM retail_sales
WHERE quantity <= 0;



-- Check invalid prices

SELECT *
FROM retail_sales
WHERE price_per_unit <= 0;



-- Check invalid total sales

SELECT *
FROM retail_sales
WHERE total_sale <= 0;



-- Check sales calculation mismatch

SELECT
    transactions_id,
    quantity,
    price_per_unit,
    total_sale,
    quantity * price_per_unit AS calculated_sale
FROM retail_sales
WHERE ABS(total_sale - (quantity * price_per_unit)) > 0.01;



-- Check available gender values

SELECT DISTINCT gender
FROM retail_sales;



-- Check product categories

SELECT DISTINCT category
FROM retail_sales;



-- Check earliest and latest transaction dates
-- This helps us understand the period covered by the dataset.

SELECT
    MIN(sale_date) AS first_transaction,
    MAX(sale_date) AS last_transaction
FROM retail_sales;



