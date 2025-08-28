-- 1633_percentage_of_users_attended_a_contest.sql
-- Title: Percentage of Users Attended a Contest
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest
-- Description: Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

-- Solution:
SELECT contest_id, ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id