# Task 6: Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume using SQL aggregations.

## Tools Used
- SQLite (DB Browser for SQLite)
- Dataset: Online Retail Dataset (Kaggle)

## Dataset
- Source: [Online Retail Dataset - Kaggle](https://www.kaggle.com/datasets/vijayuv/onlineretail)
- Not uploaded due to file size limit (>25MB)
- Table name: `online_sales`
- Key columns: `order_id`, `order_date`, `amount`, `quantity`, `product_id`

## Queries Written

### Query 1: Monthly Revenue and Order Volume
- Groups data by year-month
- Calculates total revenue and unique order count

### Query 2: Monthly Quantity Sold
- Shows total quantity of items sold each month
- Sorted by highest quantity first

### Query 3: Top 3 Months by Average Order Value
- Finds months with highest average order value
- Limited to top 3 results

### Query 4: Yearly Comparison — 2010 vs 2011
- Compares total sales, average sales and order volume
- Filtered using WHERE clause for specific years

### Query 5: Monthly Sales Summary by Product Diversity
- Combines all key metrics month by month
- Shows unique products, total sales, avg sales and order volume

## Concepts Learned
- `GROUP BY` for aggregating data
- `strftime()` for extracting year and month in SQLite
- `SUM()`, `AVG()`, `COUNT(DISTINCT)` aggregate functions
- `WHERE` for filtering specific time periods
- `ORDER BY` and `LIMIT` for sorting and limiting results

## Files in this Repository
- `Online_sales script.sql` — All 5 SQL queries
- `Query screenshots.pdf/` — Results screenshots for each query
- 'README.md -Description of the task
