-- 577_employee_bonus.sql
-- Title: Employee Bonus
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employee-bonus
-- Description: Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

-- Solution:
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
Where b.bonus < 1000 OR b.bonus IS NULL