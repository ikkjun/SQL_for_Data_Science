/* working with text strings

working with string variables
retrieve the data in the format you need(client vs. server formatting)
support joins
string functions: concatenate, substring, trim, upper, lower

Concatenations
note: SQL server supports + instead of ||
select company name
,contactname
,companyname || '('|| contactname||')'
from customers

Trimming Strings
Trims the leading or trailing space from a string
TRIM
RTRIM
LTRIM
SELECT TRIM("You the
best.") AS Triimmedstring

Substring
returns the specified number of characters
from a particular position of a given string
SUBSTR(string name, string position,
number of characters to be returned);
SELECT first_name, SUBSTR(first_name, 2, 3)
from employees
where department_id = 60;

Substring Example
select first_name,
SUBSTR(first_name, 3, 4)
from employees
where department_id = 100;

 Upper and LOWER
 select upper(column_name) from table_name;
 select lower(column_name) from table_name;
 select ucase(column_name) from table_name;
 */

/*
Working with Date and Time Strings

working with Date Variables
"as long as your data contains only the date portino, 
your queires will work as expected. However, 
if a time portion is involved, it gets more complicated."
"The most difficult part when working with dates
is to be sure that the format of the date you are trying to insert,
matches the format of the date column in the database."
Dates are stored as datetypes
Each DBMS uses it's own variety of datatypes

Date Formates
DATE: Format YYYY-MM-DD
DATETIME: Format YYYY-MM-DD HH:MI:SS
TIMESTAMP: Format YYYY-MM-DD HH:MI:SS 
*/

/*
Date and Time Strings Examples
STRFTIME: String Format Time
Example
SELECT Birthdate,
,STRFTIME('%Y', BIRTHDATE) AS Year
,STRFTIME('%m', Birthdate) AS Month
,STRFTIME('%d', Birthdate) as Day
FROM employees

Compute Current Date
SELECT DATE('now')
Compute Year, Month and Day
for the Current Date
SELECT STRFTIME('%Y %m %d', 'now')

Compute Age Using Birthdate
SELECT Birthdate
,STRFTIME('%Y', Birthdate) AS Year
,STRFTIME('%m', Birthdate) AS Month
,STRFTIME('%d', Birthdate) AS Day
,Date(('now') - Birthdate) AS Age
FORM employees
*/

/*
Case Statements

What is a Case Statement
Mimics if-then-else statement found in 
most programming languages
Can be used in SELECT, INSERT, UPDATE, and DELETE statements

Simple Case Statement
Case input_expressing
when when_expression then
result_expression
[ELSE else_result_expression]
END

SELECT
employeeid
,firstname
,lastname
,city
,CASE City
		WHEN 'Calgary' then 'Calgary'
ELSE 'Other'
		END calgary
FROM Employees
ORDER BY LastName, FirstName;

Search Case Statement
Select
trackid
,name
,bytes
,CASE
WHEN bytes < 300000 THEN 'small'
WHEN bytes >= 300001 AND bytes <= 500000 THEN 'medium'
WHEN bytes >= 500001 THEN 'large'
ELSE 'Other'
END bytescategory
FROM
tracks;
 */

/*
Views

Overview of Vies
A stored query
Can add or remove columns without changing schema
Use it to encapsulate queries
The view will be removed after database connection has ended

create [temp] view [if not exists]
view_name(column-name-list)
as
select-statement;

create view my_view
as
select
r.regiondescription
,t.territorydescription
,e.lastname
,e.firstname
,e.hiredate
,e.reportsto
from region r
inner join territories t on r.regionid = t.regionid
inner join employeeterritories et on t.territoryid = et.territory id
inner join employees e on et.employeeid = e.employeeid

select * 
from my_view
drop view my_view

Why Use Views
Get a count of how many territories each employee has

select count(territorydescription)
mlastname
,firstname
from my_view
group by lastname, firstname;
 */

/*
Data Governance and Profiling

What is Data Profiling?
Looking at descriptive statistics or object
data information - examining data from
completeness and accuracy
Important to understand your data before you query it.

Object Data Profile
Number of rows
Table size
When the object was last updated

Column Data Profile
Column data type
Number of distinct values
Number of rows with NULL values
Descriptive statistics: maximum, average and
standard deviation for column values

Governance Best Practices
Understand your read and write capabilities
Clean up your environments
Understand your promotion process
 */

/*
Using SQL for Data Science, Part 1

Working Through a Problem from Beginning to End
1. Data Understanding
Most important step
Understanding relationships in your data
NULL values
String values
Dates and times

Subject Area Understanding
Until you gain business understanding, writing queries may take more time
Understanding where data joins are
Differentiating integers from strings
Investing time to understand your subject will help later during data analysis

2. Business Understanding
Ask question about business problem you are solving
Hard to separate data and business understanding

Moving Between Data and Business Understanding
*/

/*
Using SQL for Data Science, Part 2
3. Profiling
Get into the details of your data
Create a data model and map the fields and tables you need
Consider joins and calculations
Understand any date quality or format issues

4. Start with Select
Start simple
Any query begins with SELECT statement
Add in special formatting
If using subqueries, start with the inner-most query and work outward

5. Test and Troubleshoot
Do not wait until the end to test queries
Test after each join or filter
Are you getting the results you expect?
Start small and go step-by-step when troubleshooting a query

6. Format & Comment
Use correct formatting and indentation
Comment strategically
Clean code and comments help when you revisit or hand off code

7. Review
Always review old queries
Business rules
Date changes
Date Indicators
Work the problem for beginning to end
*/

