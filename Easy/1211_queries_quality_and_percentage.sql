-- 1211_queries_quality_and_percentage.sql
-- Title: Queries Quality and Percentage
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/queries-quality-and-percentage
-- Description: Write a solution to find each query_name, the quality and poor_query_percentage.

-- Solution:
SELECT query_name, 
    ROUND((SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END) / COUNT(query_name)) *100,2) AS poor_query_percentage, 
    ROUND(SUM((rating/position)) / COUNT(query_name),2) AS quality
FROM Queries
GROUP BY query_name

-- Quality -> rating/position, Poor query percentage -> rating<3