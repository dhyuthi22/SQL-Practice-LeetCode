-- 183_customers_who_never_order.sql
-- Title: Customers Who Never Order
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customers-who-never-order
-- Description: Write a solution to find all customers who never order anything.

-- Solution:
Select name as Customers
From Customers
Where id Not in ( Select customerId from Orders)