-- 596_classes_with_atleast_5_students.sql
-- Title: Classes With Atleast 5 Students
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students
-- Description: Write a solution to find all the classes that have at least five students.

-- Solution 1:
SELECT class
FROM Courses
GROUP BY class
ORDER BY COUNT(1) DESC
LIMIT 1

-- Solution 2:
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5