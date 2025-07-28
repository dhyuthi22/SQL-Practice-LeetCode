-- 175_combine_two_tables.sql
-- Title: Combine Two Tables
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/combine-two-tables
-- Description: Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

-- Solution:
Select Person.firstName, Person.lastName, Address.city, Address.state
from Person
Left Join Address
On Person.personId = Address.personId