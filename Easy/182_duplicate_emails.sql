-- 182_duplicate_emails.sql
-- Title: Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/duplicate-emails
-- Description: Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

-- Solution:
Select email
From Person
Group by email
Having count(email)>1;