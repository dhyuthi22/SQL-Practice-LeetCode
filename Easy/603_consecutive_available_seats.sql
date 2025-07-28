-- 603_consecutive_available_seats.sql
-- Title: Consecutive Available Seats
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/consecutive-available-seats
-- Description: Write a solution to find all the consecutive available seats order by the seat_id using the cinema table. 1 - "free", 0 - "occupied"

-- Solution:
SELECT DISTINCT c1.seat_id
FROM Cinema c1
JOIN Cinema c2
ON abs(c1.seat_id - c2.seat_id) = 1
WHERE c1.free = 1 and c2.free = 1
ORDER BY c1.seat_id
