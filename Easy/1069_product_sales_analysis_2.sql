-- 1069_product_sales_analysis_2.sql
-- Title: Product Sales Analysis 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/product-sales-analysis-ii
-- Description: Write a solution to report the total quantity sold for every product id.

-- Solution:
SELECT product_id, sum(quantity) AS total_quantity
FROM Sales
GROUP BY product_id