-- 1068_product_sales_analysis_1.sql
-- Title: Product Sales Analysis 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/product-sales-analysis-i
-- Description: Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

-- Solution:
SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id