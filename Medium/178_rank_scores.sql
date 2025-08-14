-- 178_rank_scores.sql
-- Rank Scores
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/rank-scores
-- Description: Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules: a)The scores should be ranked from the highest to the lowest. b)If there is a tie between two scores, both should have the same ranking. c)After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.

-- Solution:
SELECT score, DENSE_RANK() OVER(ORDER BY score DESC) AS 'rank'
FROM Scores
ORDER BY 'rank'