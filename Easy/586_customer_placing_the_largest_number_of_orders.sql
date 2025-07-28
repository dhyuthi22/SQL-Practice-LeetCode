-- 586_customer_placing_the_largest_number_of_orders.sql
-- Title: Customer Placing The Largest Number Of Orders
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders
-- Description: Write a solution to find the customer_number for the customer who has placed the largest number of orders.

-- Solution:
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY Count(1) DESC
LIMIT 1