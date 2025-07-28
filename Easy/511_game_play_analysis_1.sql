-- 511_game_play_analysis_1.sql
-- Title: Game Play Analysis 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/game-play-analysis-i
-- Description: Write a solution to find the first login date for each player.

-- Solution:
SELECT player_id, min(event_date) as first_login
FROM Activity
GROUP BY player_id