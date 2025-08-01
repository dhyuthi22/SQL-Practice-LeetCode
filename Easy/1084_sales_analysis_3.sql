-- 1084_sales_analysis_3.sql
-- Title: Sales Analysis 3
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/sales-analysis-iii
-- Description: Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

-- Solution:
SELECT DISTINCT p.product_id, p.product_name
FROM Product p
JOIN Sales s
ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2019-01-01' AND '2019-03-31' AND p.product_id NOT IN(
    SELECT product_id
    FROM Sales
    WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31'
    )