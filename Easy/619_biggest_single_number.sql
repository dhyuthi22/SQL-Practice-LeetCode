-- 619_biggest_single_number.sql
-- Title: Biggest Single Number
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/biggest-single-number
-- Description: Write a solution to find the largest single number. If there is no single number, report null.

-- Solution 1:
SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

-- Solution 2:
SELECT IFNULL((
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(1)=1
    ORDER BY num Desc
    LIMIT 0,1), NULL) AS num