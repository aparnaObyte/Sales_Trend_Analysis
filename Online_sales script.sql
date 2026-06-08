ALTER TABLE Online_sales RENAME COLUMN InvoiceNo to order_id;
ALTER TABLE Online_sales RENAME COLUMN InvoiceDate to order_date;
ALTER TABLE Online_sales RENAME COLUMN "Total Revenue" to amount;
ALTER TABLE Online_sales RENAME COLUMN StockCode to product_id;
 
 select * from Online_sales limit 5;

---Monthly Revenue and Order Volume---
select strftime('%Y-%m',order_date) as month,
round(sum(amount),2) as total_sales,
count(distinct order_id) as order_volume
from Online_sales
group by month
order by month;

---Monthly Quantity Sold---
select strftime('%Y-%m',order_date) as month,
sum(quantity) as total_quantity
from Online_sales
group by month
order by total_quantity desc;

---Top 3 Months by Average Order Value---
select strftime('%Y-%m',order_date) as month,
round(avg(amount),2) as avg_sales
from Online_sales
group by month
order by avg_sales DESC limit 3;

---Yearly Comparison — 2010 vs 2011---
select strftime('%Y',order_date) as year,
round(sum(amount)) as total_sales,round(avg(amount)) as avg_sales,count(distinct order_id) as order_volume
from Online_sales
where strftime('%Y',order_date)='2010' OR strftime('%Y',order_date)='2011'
GROUP BY year;

---Monthly Sales Summary by Product Diversity---
select strftime('%Y-%m',order_date) as month,
count(distinct product_id) as total_products,
round(sum(amount)) as total_sales,round(avg(amount)) as avg_sales,count(distinct order_id) as order_volume
from Online_sales
group by month
order by month;






