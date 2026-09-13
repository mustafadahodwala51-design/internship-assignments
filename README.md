# 📊 Sales Performance Dashboard — Global Superstore

## 📌 Project Overview

This project focuses on analyzing sales performance using the **Global Superstore 2016 dataset** and Microsoft Excel.

An interactive sales analysis dashboard was developed to transform raw transactional data into meaningful business insights. The project uses Excel-based data cleaning, Pivot Tables, Pivot Charts, conditional formatting, descriptive statistics, and dashboard visualization.

The analysis focuses on understanding revenue performance across categories, regions, years, and customer segments.

---

## 🎯 Project Objectives

The primary objectives of this project are to:

- Analyze overall sales revenue
- Identify high-performing product categories
- Analyze region-wise sales performance
- Examine yearly sales trends
- Analyze revenue by customer segment
- Calculate descriptive statistics such as Mean, Median, and Mode
- Identify the top-performing sales transactions
- Build a professional sales performance dashboard
- Generate actionable business insights from sales data

---

## 🛠️ Tools & Technologies

- **Microsoft Excel**
- Pivot Tables
- Pivot Charts
- Conditional Formatting
- Excel Formulas
- Data Cleaning
- Data Visualization
- Dashboard Design

---

## 📂 Dataset

The project uses the **Global Superstore 2016** dataset containing transactional sales information.

The dataset contains **51,290 records** with information including:

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- City
- State
- Region
- Product Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit
- Shipping Cost
- Order Priority

A `Year` field was derived from the Order Date to support yearly trend analysis.

> **Note:** The source dataset does not contain a literal `Department` column. For the department-wise revenue analysis requested in the project, the existing `Segment` field was used as the department-level grouping.

---

## 📊 Dashboard Features

### 💰 1. Total Revenue

The dashboard provides an overview of total revenue generated across all transactions.

**Total Revenue:**

> **$12,642,501.91**

---

### 🏷️ 2. Sales by Category

Sales performance is analyzed across the major product categories.

The analysis helps identify which product categories contribute the most to overall revenue.

**Highest Revenue Category:**

> **Technology**

---

### 🌍 3. Region-wise Sales

A region-wise sales analysis was created using Pivot Tables to compare revenue performance across geographical regions.

This helps identify stronger and weaker regional markets.

---

### 📈 4. Yearly Sales Trends

A yearly sales analysis was created using the derived `Year` field.

A line chart was used to visualize changes in sales performance over time.

**Highest Sales Year:**

> **2015**

---

### 🏢 5. Department-wise Revenue

Revenue was analyzed using the dataset's `Segment` field as the department-level grouping.

The major groups analyzed were:

- Consumer
- Corporate
- Home Office

**Highest Revenue Group:**

> **Consumer**

---

### 📐 6. Descriptive Statistics

The project calculates basic statistical measures for Sales.

| Measure | Result |
|---|---:|
| Mean | $246.49 |
| Median | $85.05 |
| Mode | $12.96 |

These measures provide an overview of the distribution of individual sales transactions.

---

### ⭐ 7. Top 10 Sales

Conditional formatting was applied to the Sales column to highlight the **Top 10 highest sales transactions**.

This provides a quick way to identify exceptionally high-value orders.

---

## 📊 Key Business Insights

Based on the analysis:

- **Technology** is the highest-revenue product category.
- **2015** recorded the highest total sales among the analyzed years.
- **Consumer** is the highest-revenue customer segment used for the department-level analysis.
- The region-wise analysis provides a basis for comparing geographical sales performance.
- The difference between the mean and median sales indicates that individual transaction values are not evenly distributed.
- Identifying high-value sales transactions can help businesses understand major revenue contributors.
- Category and regional performance can support future inventory, marketing, and sales planning decisions.

---

## 📁 Project Structure

```text
Global-Superstore-Sales-Performance/
│
├── Global_Superstore_Week1_Complete.xlsx
│
└── README.md
