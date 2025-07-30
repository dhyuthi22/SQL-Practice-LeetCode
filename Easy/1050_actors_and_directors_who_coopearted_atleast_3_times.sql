-- 1050_actors_and_directors_who_coopearted_atleast_3_times.sql
-- Title: Actors And Directors Who Cooperated Atleast 3 Times
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times
-- Description: Write a solution to find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

-- Solution:
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id,director_id
HAVING COUNT(1) >= 3