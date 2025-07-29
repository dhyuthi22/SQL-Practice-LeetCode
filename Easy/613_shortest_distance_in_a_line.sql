-- 619_biggest_single_number.sql
-- Title: Biggest Single Number
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/shortest-distance-in-a-line
-- Description: Write a solution to find the shortest distance between 2 points in these points.

-- Solution:
SELECT abs(p1.x-p2.x) AS shortest
FROM point p1
JOIN point p2
WHERE p1.x>p2.x
ORDER BY abs(p1.x-p2.x)
LIMIT 1