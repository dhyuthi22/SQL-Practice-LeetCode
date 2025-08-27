-- 1587_bank_account_summary_2.sql
-- Bank Account Summary 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/bank-account-summary-ii
-- Description: Write a solution to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

-- Solution:
SELECT u.name, SUM(t.amount) AS balance
FROM Users u
JOIN Transactions t
ON u.account = t.account
GROUP BY name
HAVING SUM(t.amount) > 10000