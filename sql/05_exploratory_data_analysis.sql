-- Section A – Business overview

-- Query 1: Total number of transactions

SELECT
    COUNT(*) AS total_transactions
FROM retail_sales;



-- Query 2: Total revenue

SELECT
    SUM(total_sale) AS total_revenue
FROM retail_sales;



-- Query 3: Average sales amount

SELECT
    ROUND(AVG(total_sale), 2) AS average_sales
FROM retail_sales;



-- Query 4: Total quantity sold

SELECT
    SUM(quantity) AS total_quantity_sold
FROM retail_sales;



-- Query 5: Minimum and maximum transaction amount

SELECT
    MIN(total_sale) AS minimum_sale,
    MAX(total_sale) AS maximum_sale
FROM retail_sales;




-- Section B – Product category analysis

-- Query 6: Revenue by product category

SELECT
    category,
    SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;



-- Query 7: Quantity sold by category

SELECT
    category,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY category
ORDER BY total_quantity DESC;



-- Query 8: Average transaction amount by category

SELECT
    category,
    ROUND(AVG(total_sale), 2) AS average_sale
FROM retail_sales
GROUP BY category
ORDER BY average_sale DESC;



-- Section C – Customer analysis

-- Query 9: Number of customers by gender

SELECT
    gender,
    COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales
GROUP BY gender;



-- Query 10: Revenue by gender

SELECT
    gender,
    SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY gender
ORDER BY total_revenue DESC;



-- Query 11: Top 10 customers by spending

SELECT
    customer_id,
    SUM(total_sale) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;



-- Query 12: Average customer age

SELECT
    ROUND(AVG(age), 1) AS average_customer_age
FROM retail_sales;



-- Section D – Time-based sales analysis

-- Query 13: Revenue by year and month

SELECT
    YEAR(sale_date) AS sales_year,
    MONTH(sale_date) AS sales_month,
    SUM(total_sale) AS monthly_revenue
FROM retail_sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY sales_year, sales_month;


-- Query 14: Best-performing month

SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(total_sale) AS monthly_revenue
FROM retail_sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY monthly_revenue DESC
LIMIT 1;



-- Query 15: Number of transactions by month

SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;





