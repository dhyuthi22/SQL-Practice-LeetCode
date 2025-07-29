-- 610_triangle_judgement.sql
-- Title: Triangle Judgment
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/triangle-judgement
-- Description: Report for every three line segments whether they can form a triangle.

-- Solution:
SELECT *,
CASE
    WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes'
    ELSE 'No'
    END AS triangle
FROM Triangle