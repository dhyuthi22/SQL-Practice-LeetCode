-- 185_department_top_three_salaries.sql
-- Title: Department Top Three Salaries
-- Difficulty: Hard
-- Link: https://leetcode.com/problems/department-top-three-salaries
-- Description: Write a solution to find the employees who are high earners in each of the departments.

-- Solution:
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
WHERE (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.departmentId = e.departmentId AND e2.salary >= e.salary ) <=3
    ORDER BY Department, Salary

-- high earner in a department. top 3 unique salaries for that department.