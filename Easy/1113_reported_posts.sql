-- 1113_reported_posts.sql
-- Title: Reported Posts
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/reported-posts
-- Description: Write a solution that reports the number of posts reported yesterday for each report reason. Assume today is 2019-07-05

-- Solution:
SELECT extra as report_reason, COUNT(DISTINCT post_id) as report_count
FROM (
    SELECT post_id,extra
    FROM Actions
    WHERE action_date=DATE_SUB('2019-07-05', INTERVAL 1 DAY) AND
    action = 'report') AS tmp
GROUP BY extra