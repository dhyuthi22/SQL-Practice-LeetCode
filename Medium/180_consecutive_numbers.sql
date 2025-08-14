-- 180_consecutive_numbers.sql
-- Consecutive Numbers
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/consecutive-numbers
-- Description: Write a solution to find all numbers that appear at least three times consecutively.

-- Solution:
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l2.id = l3.id - 1
WHERE l1.num = l2.num AND l2.num = l3.num