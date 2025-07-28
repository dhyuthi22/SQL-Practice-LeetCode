-- 512_game_play_analysis_2.sql
-- Title: Game Play Analysis 2
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/game-play-analysis-ii
-- Description: Write a solution to find the device that is first logged in for each player.

-- Solution:
SELECT DISTINCT player_id, device_id
FROM Activity
WHERE (player_id, event_date) in (
    SELECT player_id,min(event_date) 
    FROM Activity GROUP BY player_id)