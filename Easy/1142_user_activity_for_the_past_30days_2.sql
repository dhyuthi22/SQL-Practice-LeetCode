-- 1142_user_activity_for_the_past_30days_2.sql
-- Title: User Activity For The Past 30 Days 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-ii
-- Description: Write a solution to find the average number of sessions per user for a period of 30days ending 2019-07-27 inclusively, rounded to 2 decimal places. The sessions we want to count for a user are those with at least one activity in that time period.

-- Solution:
SELECT IFNULL(ROUND(AVG(a.num),2),0) as active_sessions_per_user
FROM (
    SELECT COUNT(session_id) AS num
    FROM Activity
    WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
    GROUP BY user_id
    ) a