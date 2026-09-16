-- ============================================================
-- WEEK 2: SQL FOR DATA ANALYSIS
-- Dataset: SQL Sales Dataset (200 Rows)
-- Database: sales_analysis
-- Table: sales
-- ============================================================


-- ============================================================
-- 1. DATABASE SETUP
-- ============================================================

USE sales_analysis;


-- ============================================================
-- 2. DATA VERIFICATION
-- ============================================================

-- Check total number of records
SELECT COUNT(*) AS total_rows
FROM sales;


-- View first 10 records
SELECT *
FROM sales
LIMIT 10;


-- ============================================================
-- 3. BASIC SELECT QUERIES
-- ============================================================

-- Display all sales records
SELECT *
FROM sales;


-- Display selected columns
SELECT
    order_id,
    customer_name,
    product_name,
    total_price
FROM sales;


-- ============================================================
-- 4. WHERE CLAUSE
-- ============================================================

-- Find orders with total price greater than 20,000
SELECT
    order_id,
    customer_name,
    total_price
FROM sales
WHERE total_price > 20000;


-- Find all Electronics orders
SELECT *
FROM sales
WHERE category = 'Electronics';


-- Find orders from the North region
SELECT *
FROM sales
WHERE region = 'North';


-- ============================================================
-- 5. ORDER BY
-- ============================================================

-- Highest-value orders first
SELECT
    order_id,
    customer_name,
    total_price
FROM sales
ORDER BY total_price DESC;


-- Lowest-value orders first
SELECT
    order_id,
    customer_name,
    total_price
FROM sales
ORDER BY total_price ASC;


-- ============================================================
-- 6. GROUP BY + AGGREGATION
-- ============================================================

-- Total revenue
SELECT
    SUM(total_price) AS total_revenue
FROM sales;


-- Average order value
SELECT
    ROUND(AVG(total_price), 2) AS average_order_value
FROM sales;


-- Total number of orders
SELECT
    COUNT(*) AS total_orders
FROM sales;


-- Total quantity sold
SELECT
    SUM(quantity) AS total_quantity_sold
FROM sales;


-- ============================================================
-- 7. SALES BY CATEGORY
-- ============================================================

SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_revenue,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;


-- ============================================================
-- 8. SALES BY REGION
-- ============================================================

SELECT
    region,
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_revenue,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;


-- ============================================================
-- 9. TOP 10 CUSTOMERS
-- ============================================================

SELECT
    customer_name,
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_spent,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;


-- ============================================================
-- 10. JOIN
-- ============================================================

-- Create region lookup table
CREATE TABLE IF NOT EXISTS regions (
    region VARCHAR(50) PRIMARY KEY,
    region_type VARCHAR(50)
);


-- Insert region information
INSERT IGNORE INTO regions (region, region_type)
VALUES
    ('North', 'Domestic'),
    ('South', 'Domestic'),
    ('East', 'Domestic'),
    ('West', 'Domestic');


-- Join sales with region lookup table
SELECT
    s.order_id,
    s.customer_name,
    s.total_price,
    s.region,
    r.region_type
FROM sales AS s
JOIN regions AS r
    ON s.region = r.region;


-- ============================================================
-- 11. SUBQUERY
-- ============================================================

-- Find orders above the overall average order value
SELECT
    order_id,
    customer_name,
    category,
    total_price
FROM sales
WHERE total_price > (
    SELECT AVG(total_price)
    FROM sales
)
ORDER BY total_price DESC;


-- ============================================================
-- 12. CUSTOMERS ABOVE AVERAGE SPENDING
-- ============================================================

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM sales
GROUP BY customer_name
HAVING SUM(total_price) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT
            customer_name,
            SUM(total_price) AS customer_total
        FROM sales
        GROUP BY customer_name
    ) AS customer_summary
)
ORDER BY total_spent DESC;


-- ============================================================
-- 13. CASE STATEMENT
-- ============================================================

-- Classify orders according to their value
SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 30000 THEN 'High Value'
        WHEN total_price >= 15000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM sales
ORDER BY total_price DESC;


-- ============================================================
-- 14. COUNT ORDERS BY VALUE CATEGORY
-- ============================================================

SELECT
    CASE
        WHEN total_price >= 30000 THEN 'High Value'
        WHEN total_price >= 15000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category,
    COUNT(*) AS number_of_orders
FROM sales
GROUP BY order_value_category
ORDER BY number_of_orders DESC;


-- ============================================================
-- 15. ADDITIONAL BUSINESS ANALYSIS
-- ============================================================

-- Revenue by sub-category
SELECT
    sub_category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY sub_category
ORDER BY total_revenue DESC;


-- Best-selling products by quantity
SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;


-- Highest-value individual orders
SELECT
    order_id,
    customer_name,
    product_name,
    category,
    total_price
FROM sales
ORDER BY total_price DESC
LIMIT 10;


-- ============================================================
-- 16. FINAL DATA CHECK
-- ============================================================

SELECT COUNT(*) AS final_row_count
FROM sales;


-- ============================================================
-- END OF WEEK 2 SQL ANALYSIS
-- ============================================================

 