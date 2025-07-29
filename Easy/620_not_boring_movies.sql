-- 620_not_boring_movies.sql
-- Title: Not Boring Movies
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/not-boring-movies
-- Description: Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

-- Solution:
SELECT *
FROM Cinema
WHERE description != 'boring' AND id % 2 = 1
ORDER BY rating DESC