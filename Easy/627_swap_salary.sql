-- 627_swap_salary.sql
-- Title: Swap Salary
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/swap-salary
-- Description: Write a solution to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

-- Solution:
UPDATE Salary
SET sex = CASE
                WHEN sex ='m' THEN 'f'
                WHEN sex='f' THEN 'm'
                ELSE sex
            END