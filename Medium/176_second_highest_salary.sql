-- 176_second_highest_salary.sql
-- Title: Second Highest Salary
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/second-highest-salary
-- Description: Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

-- Solution:
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary) FROM Employee)