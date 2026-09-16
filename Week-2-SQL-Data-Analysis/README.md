# Week 2 - SQL for Data Analysis

## 📌 Overview

This project focuses on analyzing a 200-row sales dataset using **MySQL**.

The objective was to practice SQL concepts commonly used in Data Analysis and extract meaningful business insights from sales data.

---

## 🛠️ Tools Used

- MySQL 8.0
- MySQL Workbench
- Excel / CSV
- SQL

---

## 📊 Dataset

The dataset contains 200 sales records with the following information:

- Order ID
- Customer Name
- Order Date
- Category
- Sub-category
- Product Name
- Quantity
- Unit Price
- Total Price
- Region

> The original dataset was provided as part of the internship assignment and is not included in this repository.

---

## 📚 SQL Concepts Covered

### Basic Queries
- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`

### Aggregate Functions
- `SUM()`
- `AVG()`
- `COUNT()`

### Advanced SQL
- `JOIN`
- Subqueries
- `CASE` statements

---

## 🔍 Analysis Performed

### Sales Analysis
- Calculated total revenue
- Calculated average order value
- Counted total orders
- Calculated total quantity sold
- Analyzed revenue by category
- Analyzed revenue by region
- Analyzed revenue by sub-category

### Customer Analysis
- Identified top 10 customers by total spending
- Calculated customer order counts
- Calculated average customer order value
- Identified customers spending above the average

### Product Analysis
- Identified top-selling products by quantity
- Identified highest-value individual orders

### Advanced Analysis
- Used a `JOIN` with a region lookup table
- Used subqueries to identify above-average orders and customers
- Used `CASE` statements to classify orders into:
  - High Value
  - Medium Value
  - Low Value

---

## 📈 Key Result

### Average Order Value

**₹12,100.54**

This was calculated using:

```sql
SELECT ROUND(AVG(total_price), 2) AS average_order_value
FROM sales;
