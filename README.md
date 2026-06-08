# Sales Trend Analysis Using Aggregations

## 📌 Project Overview
The core focus of this task is to perform time-series data analysis using SQL aggregations to uncover monthly business performance trends, revenue metrics, and order volumes.

### Objective
To analyze transaction data from an online sales platform using SQLite, extract time-based insights, and calculate critical business performance metrics such as monthly revenue and unique order volumes.

---

## 🛠️ Tools & Tech Stack
* **Database Engine:** SQLite (DB Browser for SQLite)
* **Language:** SQL
* **Core Concepts:** 
  * Time extraction (`strftime()`)
  * Data aggregation (`GROUP BY`, `SUM()`, `AVG()`, `COUNT(DISTINCT)`)
  * Data filtering and sorting (`WHERE`, `ORDER BY`, `LIMIT`)

---

## 📊 Dataset Information
* **Name:** Online Retail Dataset (sourced from Kaggle)
* **Table Name:** `online_sales`
* **Key Columns:** `order_id`, `order_date`, `amount`, `quantity`, `product_id`

> ⚠️ **Note:** The raw dataset file exceeds 25MB and has not been uploaded to this repository due to GitHub file size limits. 

---

## 🔍 Queries Implemented

### Query 1: Monthly Revenue and Order Volume
* **Purpose:** Group data chronologically to calculate the primary business growth metrics.
* **Key Operations:** Groups data by year-month using `strftime()`, calculates total revenue using `SUM()`, and counts unique order transactions using `COUNT(DISTINCT)`.

### Query 2: Monthly Quantity Sold
* **Purpose:** Track inventory and item movement trends over time.
* **Key Operations:** Aggregates the total quantity of items sold each month and sorts the results from highest quantity to lowest using `ORDER BY`.

### Query 3: Top 3 Months by Average Order Value (AOV)
* **Purpose:** Identify which months brought in the highest value per transaction.
* **Key Operations:** Calculates the average sales value per order, sorts the results in descending order, and restricts the output using `LIMIT 3`.

### Query 4: Yearly Comparison — 2010 vs 2011
* **Purpose:** Conduct a macro-level performance review comparing two consecutive operational years.
* **Key Operations:** Filters data using a `WHERE` clause for the years 2010 and 2011 to compare total sales, average sales, and overall order volumes.

### Query 5: Monthly Sales Summary by Product Diversity
* **Purpose:** Provide a comprehensive monthly executive summary highlighting product variety alongside revenue metrics.
* **Key Operations:** Combines all key metrics month-by-month to display the count of unique products sold alongside total sales, average sales, and total order volume.

---

## 💡 Key Concepts Learned
* **Data Aggregation:** Mastering the `GROUP BY` clause to collapse transaction-level rows into meaningful time-based buckets.
* **SQLite Date Manipulation:** Utilizing the `strftime()` function to accurately parse and format date strings into year-month formats.
* **Distinct Counting:** Understanding how `COUNT(DISTINCT order_id)` isolates unique transactions versus counting raw line items.
* **Result Filtering & Constraints:** Leveraging `WHERE` for precise time-period isolation, alongside `ORDER BY` and `LIMIT` to isolate top performers.

---

## 📂 Repository Structure
* `Online_sales script.sql` — Contains the fully formatted and documented SQL scripts for all 5 analytical queries.
* `Query screenshots.pdf` — Document containing the visual execution results and output tables for each query.
* `README.md` — Project description and summary of operations.
