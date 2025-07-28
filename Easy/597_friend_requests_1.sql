-- 597_friend_request_1.sql
-- Title: Friend Requests 1:Overall Acceptance Rate
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/friend-requests-i-overall-acceptance-rate
-- Description: Write a solution to find the overall acceptance rate of requests rounded to 2 decimals, which is the number of acceptance divide the number of requests.

-- Solution:
SELECT IFNULL((round(accepts/requests,2)),0.0) AS accept_rate
FROM ( SELECT
    (SELECT count(DISTINCT sender_id,send_to_id) AS requests FROM friend_request),
    (SELECT count(DISTINCT requester_id,accepter_id) AS accepts FROM request_accepted)
    ) AS data