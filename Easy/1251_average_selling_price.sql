-- 1251_average_selling_price.sql
-- Title: Average Selling Price
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/average-selling-price
-- Description: Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

-- Solution:
SELECT p.product_id, ROUND(COALESCE(SUM(u.units*p.price) * 1.0 / NULLIF(SUM(u.units),0),0),2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id

-- Filter by the dates as well for the appropirate average_price.