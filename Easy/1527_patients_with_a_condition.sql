-- 1527_patients_with_a_condition.sql
-- Patients With A Condition
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/patients-with-a-condition
-- Description: Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

-- Solution:
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'