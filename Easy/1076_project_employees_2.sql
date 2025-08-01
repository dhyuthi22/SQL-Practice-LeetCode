-- 1076_project_employees_2.sql
-- Title: Project Employees 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/project-employees-ii
-- Description: Write an SQL query that reports all the projects that have most employees.

-- Solution:
SELECT project_id
FROM Project
GROUP BY project_id
HAVING COUNT(employee_id) = (
    SELECT employee_id
    FROM Project
    GROUP BY project_id
    ORDER BY COUNT(employee_id) DESC
    LIMIT 1)