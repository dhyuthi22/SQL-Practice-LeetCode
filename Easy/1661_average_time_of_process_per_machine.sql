-- 1661_average_time_of_process_per_machine.sql
-- Title: Average Time of Process Per Machine
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine
-- Description: Write a solution to find the average time each machine takes to complete a process.

-- Solution:
SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1, Activity a2
WHERE a1.machine_id = a2.machine_id AND a1.process_id = a2.process_id
    AND a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id

-- Time to complete a process ->end - start timestamp.
-- Average -> [(end0 - start0) + (end1 - start1)] of same machine_id / count of processes