
-- Retail Sales Analysis
-- Create retail sales table

USE retail_sales_analysis;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    total_sale DECIMAL(10,2)
);


-- Verify table structure
DESCRIBE retail_sales;
