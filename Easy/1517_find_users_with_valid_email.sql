-- 1517_find_users_with_valid_email.sql
-- Find Users with Valid E-mail
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-users-with-valid-e-mails
-- Description: Write a solution to find the users who have valid emails.

-- Solution:
SELECT *
FROM Users
WHERE REGEXP_LIKE (mail,'^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$', 'c')

-- prefix may contain letters(upper or lower), digits, _, /, -.Must start with a letter.
-- The domain must be @leetcode.com