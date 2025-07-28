-- 196_delete_duplicate_emails.sql
-- Title: Delete Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/delete-duplicate-emails
-- Description: Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

-- Solution:
DELETE p2
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
and p1.id < p2.id