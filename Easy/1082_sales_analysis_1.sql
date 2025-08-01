-- 1082_sales_analysis_1.sql
-- Title: Sales Analysis 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/sales-analysis-i
-- Description: Write an SQL query that reports the best seller by total sales price, if there is a tie, report them all.

-- Solution:
SELECT seller_id
FROM Sales
GROUP BY seller_id
HAVING SUM(price) = (
    SELECT SUM(price)
    FROM Sales
    GROUP BY seller_id
    ORDER BY SUM(price) Desc
    LIMIT 2)