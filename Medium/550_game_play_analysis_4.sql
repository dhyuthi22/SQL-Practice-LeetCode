-- 550_game_play_analysis_4.sql
-- Game Play Analysis 4
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/game-play-analysis-iv
-- Description: Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players who logged in on the day immediately following their initial login, and divide it by the number of total players.

-- Solution:
SELECT 
  ROUND(COUNT(DISTINCT a.player_id) * 1.0 / 
        (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) b
ON a.player_id = b.player_id 
   AND DATEDIFF(a.event_date, b.first_login) = 1