-- 1378_replace_employee_id_with_the_unique_identifier.sql
-- Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier
-- Description: Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

-- Solution:
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id