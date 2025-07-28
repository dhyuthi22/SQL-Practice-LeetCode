-- 607_sales_person.sql
-- Title: Sales Person
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/sales-person
-- Description: Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".

-- Solution:
SELECT name
FROM SalesPerson
WHERE name NOT IN
    (SELECT SalesPerson.name
    FROM SalesPerson, Orders, Company
    WHERE Company.name = 'RED'
    AND SalesPerson.sales_id = Orders.sales_id
    AND Company.com_id = Orders.com_id
    )