-- 197_rising_temperature.sql
-- Title: Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/rising-temperature
-- Description: Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

-- Solution:
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATE_ADD(w2.recordDate, INTERVAL 1 DAY)= w1.recordDate
WHERE w1.temperature > w2.temperature


-- DATE_ADD used to add 1 day to w2.recordDate, ensuring w1.recordDate is 1 day after w2.recordDate