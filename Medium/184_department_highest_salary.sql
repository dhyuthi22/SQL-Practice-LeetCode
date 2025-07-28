-- 184_department_highest_salary.sql
-- Title: Department Highest Salary
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/department-highest-salary
-- Description: Write a solution to find employees who have the highest salary in each of the departments.

-- Solution:
Select e.name as Employee, e.salary as Salary, d.name as Department
From Employee e
Join Department d
on e.departmentId = d.id
where e.salary = (select max(salary) from Employee where departmentId = e.departmentId)