-- 1083_sales_analysis_2.sql
-- Title: Sales Analysis 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/sales-analysis-ii
-- Description: Write an SQL query that reports the buyers who have bought S8 but not iPhone.

-- Solution:
SELECT DISTINCT s.buyer_id
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
WHERE p.product_name = 'S8' AND s.buyer_id NOT IN(
    SELECT s.buyer_id
    FROM Sales s
    LEFT JOIN Product p
    ON s.product_id = p.product_id
    WHERE p.product_name = 'iPhone'
    )