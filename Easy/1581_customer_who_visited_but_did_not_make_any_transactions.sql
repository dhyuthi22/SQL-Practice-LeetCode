-- 1581_customer_who_visited_but_did_not_make_any_transactions.sql
-- Customer Who Visited But Did Not Make Any Transactions
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions
-- Description: Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Solution:
SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id