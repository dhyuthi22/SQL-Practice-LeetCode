-- 1141_user_activity_for_the_past_30days_1.sql
-- Title: User Activity For The Past 30 Days 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i
-- Description: Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

-- Solution:
SELECT activity_date as day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date > '2019-06-27' AND activity_date < '2019-07-28'
GROUP BY activity_date