
USE retail_sales_analysis;


-- Check total number of records
SELECT COUNT(*) AS total_records
FROM retail_sales;


-- Display first 10 records
SELECT *
FROM retail_sales
LIMIT 10;


-- Check whether any values are missing
SELECT
    COUNT(*) AS total_rows,
    SUM(transactions_id IS NULL) AS missing_transaction_ids,
    SUM(sale_date IS NULL) AS missing_dates,
    SUM(customer_id IS NULL) AS missing_customers,
    SUM(gender IS NULL) AS missing_genders,
    SUM(age IS NULL) AS missing_ages,
    SUM(category IS NULL) AS missing_categories,
    SUM(quantity IS NULL) AS missing_quantities,
    SUM(price_per_unit IS NULL) AS missing_prices,
    SUM(total_sale IS NULL) AS missing_sales
FROM retail_sales;

