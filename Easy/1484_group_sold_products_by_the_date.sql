-- 1484_group_sold_products_by_the_date.sql
-- Group Sold Products by the Date
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/group-sold-products-by-the-date
-- Description: Write a solution to find for each date the number of different products sold and their names.

-- Solution:
SELECT sell_date, COUNT(DISTINCT product) as num_sold, Group_CONCAT(DISTINCT product ORDER BY product)AS products
FROM Activities
GROUP BY sell_date