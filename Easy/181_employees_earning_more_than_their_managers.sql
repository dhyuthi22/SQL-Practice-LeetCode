-- 181_employee_earning_more_than_their_managers.sql
-- Title: Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers
-- Description: Write a solution to find the employees who earn more than their managers.

-- Solution:
Select e1.name As Employee
From Employee e1
Join Employee e2
On e1.managerId = e2.id
Where e1.salary > e2.salary