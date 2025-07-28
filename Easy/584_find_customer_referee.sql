-- 584_find_customer_referee.sql
-- Title: Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-customer-referee
-- Description: Find the names of the customer that are either: [1] referred by any customer with id != 2. [2] not referred by any customer.

-- Solution:
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id is NULL