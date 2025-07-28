-- 595_big_countries.sql
-- Title: Big Countries
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/big-countries
-- Description: Write a solution to find the name, population, and area of the big countries.

-- Solution:
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000