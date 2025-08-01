-- 1075_project_employees_1.sql
-- Title: Project Employees 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/project-employees-i
-- Description: Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

-- Solution:
SELECT p.project_id, round(AVG(experience_years),2) as average_years
FROM Project p
JOIN Employee e 
ON p.employee_id = e.employee_id
GROUP BY project_id