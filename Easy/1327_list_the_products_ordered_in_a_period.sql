-- 1327_list_the_products_ordered_in_a_period.sql
-- List The Products Ordered In A Period
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period
-- Description: Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

-- Solution:
SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100