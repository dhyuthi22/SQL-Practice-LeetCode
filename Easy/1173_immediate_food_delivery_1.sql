-- 1173_immediate_food_delivery_1.sql
-- Title: Immediate Food Delivery 1
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/immediate-food-delivery-i
-- Description: Write a solution to find the percentage of immediate orders in the table, rounded to 2 decimal places.

-- Solution:
SELECT ROUND(SUM(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END)/COUNT(*),2) AS immediate_percentage
FROM Delivery

-- preferred delivery date = order date -> Immediate