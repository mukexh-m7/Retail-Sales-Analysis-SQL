# Retail Sales Analysis Using MySQL

## Project Overview

This project focuses on analyzing retail sales data using **MySQL 8** to identify sales trends, customer purchasing behavior, and product category performance.

The analysis uses SQL queries to explore transaction data, calculate revenue metrics, identify top customers, and generate meaningful business insights.

## Objectives

- Analyze overall retail sales performance.
- Identify the highest-revenue product categories.
- Understand customer purchasing behavior.
- Find top-spending and repeat customers.
- Analyze monthly sales trends.
- Compare purchasing patterns across gender and age groups.

## Dataset

The dataset is sourced from Kaggle:

[Retail Sales Dataset – Kaggle](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset)

It contains 1,000 retail transactions with the following columns:

| Column | Description |
|---|---|
| Transaction ID | Unique transaction identifier |
| Date | Date of transaction |
| Customer ID | Customer identifier |
| Gender | Customer gender |
| Age | Customer age |
| Product Category | Category of purchased product |
| Quantity | Number of units purchased |
| Price per Unit | Price of one unit |
| Total Amount | Total transaction amount |

## Tools & Technologies

- MySQL 8
- MySQL Workbench
- SQL
- Git and GitHub

## Project Structure

```text
Retail-Sales-Analysis-SQL/
│
├── dataset/
│   └── retail_sales.csv
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_table.sql
│   ├── 03_data_verification.sql
│   ├── 04_data_cleaning.sql
│   ├── 05_exploratory_data_analysis.sql
│   └── 06_advanced_analysis.sql
│
├── results/
│   └── business_insights.md
│
└── README.md
```

## SQL Concepts Used

- SELECT, WHERE and ORDER BY
- Aggregate functions: SUM(), AVG(), COUNT(), MIN(), MAX()
- GROUP BY and HAVING
- DISTINCT
- Subqueries
- Common Table Expressions (CTEs)
- CASE statements
- Date functions and DATE_FORMAT()
- Window functions: RANK() and SUM() OVER()

## Analysis Performed

### 1. Data Verification and Cleaning
- Checked for duplicate transaction IDs.
- Identified missing values.
- Validated age, quantity, price, and sales values.
- Checked consistency between quantity, unit price, and total amount.

### 2. Exploratory Data Analysis
- Calculated total revenue and transaction count.
- Analyzed revenue by product category.
- Compared sales across genders.
- Identified monthly sales trends.
- Analyzed customer spending behavior.

### 3. Advanced SQL Analysis
- Ranked product categories by revenue.
- Identified the top 5 highest-spending customers.
- Analyzed repeat customers.
- Calculated category-wise revenue contribution.
- Ranked months by revenue.
- Analyzed revenue by customer age groups.
- Compared average spending by gender.
- Calculated cumulative running revenue.

## Key Business Insights

| Metric | Finding |
|---|---|
| Total Transactions | 1,000 |
| Total Revenue | 456,000 |
| Average Transaction Value | 456 |
| Total Quantity Sold | 2,514 |
| Highest Revenue Category | Electronics |
| Best Performing Month | May 2023 |
| Top Spending Customer | C015 |
| Highest Revenue Age Group | 46–55 |
| Repeat Customers | 38 |

### Additional Findings

- Electronics contributed 34.41% of total revenue.
- Clothing contributed 34.12% of total revenue.
- Beauty contributed 31.47% of total revenue.
- Female customers generated higher total revenue than male customers.
- The final cumulative revenue was 456,000.

*Note: The dataset does not specify a currency. Revenue values are reported in the dataset's original monetary units.*

## Conclusion

This project demonstrates the use of SQL for retail sales analysis, data validation, customer segmentation, revenue analysis, and business insight generation.

It provided practical experience with MySQL queries, aggregate functions, subqueries, CTEs, and window functions.

---

**Project:** Retail Sales Analysis Using MySQL  
**Database:** MySQL 8  
**Author:** Mukesh Maharana