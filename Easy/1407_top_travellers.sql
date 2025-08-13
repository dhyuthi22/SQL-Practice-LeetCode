-- 1407_top_travellers.sql
-- Top Travellers
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/top-travellers
-- Description: Write a solution to report the distance traveled by each user.

-- Solution:
SELECT u.name, IFNULL(SUM(r.distance),0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.name, u.id
ORDER BY travelled_distance DESC, u.name

-- travelled_ditance in desc order, if same distance then order by name asc order.