-- Query 16 – Rank product categories by revenue
-- Business question: Which product category performs best?

SELECT
    category,
    SUM(total_sale) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(total_sale) DESC
    ) AS revenue_rank
FROM retail_sales
GROUP BY category;



-- Query 17 – Find the top 5 customers

SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(total_sale) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;



-- Query 18 – Analyze repeat customers
-- Business question: How many customers have made more than one transaction?

SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY total_orders DESC;



-- Query 19 – Calculate revenue contribution by category
-- Business question: What percentage of total revenue comes from each category?

SELECT
    category,
    SUM(total_sale) AS category_revenue,
    ROUND(
        SUM(total_sale) * 100 /
        (SELECT SUM(total_sale) FROM retail_sales),
        2
    ) AS revenue_percentage
FROM retail_sales
GROUP BY category
ORDER BY category_revenue DESC;



-- Query 20 – Monthly revenue ranking
-- Business question: Which months performed best?

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
        SUM(total_sale) AS monthly_revenue
    FROM retail_sales
    GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
)
SELECT
    sales_month,
    monthly_revenue,
    RANK() OVER (
        ORDER BY monthly_revenue DESC
    ) AS month_rank
FROM monthly_sales
ORDER BY month_rank;



-- Query 21 – Customer age group analysis
-- Business question: Which age group contributes the most revenue?

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_transactions,
    SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY age_group
ORDER BY total_revenue DESC;



-- Query 22 – Average spending by gender
-- Business question: Which gender has a higher average transaction value?

SELECT
    gender,
    COUNT(*) AS total_transactions,
    ROUND(AVG(total_sale), 2) AS average_spending,
    ROUND(SUM(total_sale), 2) AS total_revenue
FROM retail_sales
GROUP BY gender;



-- Query 23 – Running total of sales
-- Business question: How does cumulative revenue grow over time?

WITH daily_sales AS (
    SELECT
        sale_date,
        SUM(total_sale) AS daily_revenue
    FROM retail_sales
    GROUP BY sale_date
)
SELECT
    sale_date,
    daily_revenue,
    SUM(daily_revenue) OVER (
        ORDER BY sale_date
    ) AS running_revenue
FROM daily_sales
ORDER BY sale_date;
