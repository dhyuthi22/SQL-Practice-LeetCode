-- 1280_students_and_examinations.sql
-- Title: Students And Examinations
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/students-and-examinations
-- Description: Write a solution to find the number of times each student attended each exam.

-- Solution:
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name