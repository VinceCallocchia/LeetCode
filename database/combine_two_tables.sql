# Problem
/* 
Write an SQL query to report the first name, last name, city, and state of each person in the Person table. 
If the address of a personId is not present in the Address table, report null instead. (View tables on LeetCode)
*/

# Schema

Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255))
Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')

# Algorithm

SELECT firstName, lastName, city, state FROM Person  # accessing first hench LEFT
LEFT JOIN Address a USING (personId) 				 # accessing second hence RIGHT. but we want every row in person so LEFT JOIN.

# Solution

/*
Here we have to use Outer Joins in order to get expected results. Because we want every row from Person
(which is we are specifying first using SELECT statement.) table so we are using LEFT JOIN on contrary
if we wanted every row from address table we would have used RIGHT JOIN. This is a two line example that
is a bit faster than the solution provided on LeetCode.
*/

# Stats

/*
Runtime: 325 ms, faster than 87.19% of MySQL online submissions for Combine Two Tables.
Memory Usage: 0B, less than 100.00% of MySQL online submissions for Combine Two Tables.
*/