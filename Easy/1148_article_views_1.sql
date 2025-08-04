-- 1148_article_views_1.sql
-- Title: Article Views 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/article-views-i
-- Description: Write a solution to find all the authors that viewed at least one of their own articles.

-- Solution:
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY viewer_id