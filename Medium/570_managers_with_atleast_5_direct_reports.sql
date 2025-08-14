-- 570_managers_with_atleast_5_direct_reports.sql
-- Managers With Atleast 5 Direct Reports
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports
-- Description: Write a solution to find managers with at least five direct reports.

-- Solution:
SELECT e1.name
FROM Employee e1
LEFT JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.name, e1.id
HAVING COUNT(e2.managerId) >= 5