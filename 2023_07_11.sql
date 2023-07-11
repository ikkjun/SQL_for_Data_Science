/*
Cartesian(Cross) JOIN
CROSS JOINs: each row from the first table 
joins with all the rows of another table

SELECT product_name
, unit_price
, company_name
FROM suppliers CROSS JOIN products;

Output will be the number of joins in 
the 1st table multiplied by the number of
rows in the 2nd table 

1. Not frequently used
2. Computationally taxing
3. Will return products with the incorrect
vendor or no vender at all 
*/

/* 
Inner JOIN 
The INNER JOIN keyword selects records that
have matching values in both tables

SELECT suppliers.CompanyName
,ProductName
,UnitPrice
FROM Suppliers INNER JOIN Products
ON Suppliers.supplierid = Products.supplierid;

Inner Join Syntax
Join type is specified(INNER JOIN)
Join condition is in the FROM clause and uses the ON clause
Joining more tables together affects overall database performance
You can join multiple tables, no limit
List all the tables, then defin conditions

SELECT o.OrderID, c.CompanyName, e.LastName
FROM ((Orders o INNER JOIN Customers c ON
o.CustomerID = c.CustomerID)
INNER JOIN Employees e ON o.EmployeeID = 
e.EmployeeID) ;

Best Practices With Joins 
Makr sure you are prequalifying names
Do not make unnecessary joins
Think about the type of join you are making
How are you connecting records 
*/

/* Aliases and Self Joins
 * 
 * What is an Alias
 * SQL aliases give a table or a temporary name
 * Make column names more readable
 * An alias only exists for the duration of the query
 * 
 * SELECT vendor_name
 * ,product_name
 * ,product_price
 * FROM Vendors, Products
 * WHERE Vendors.vendor_id = Products.vendor_id;
 * 
 * Using Alias
 * SELECT vendor_name
 * ,product_name
 * ,product_price
 * FROM Vendor AS v, Products AS p
 * WHERE v.vendor_id = p.vendor_id;
 * 
 * Self Joins
 * Match customers from the same city
 * Take the table and treat it like two separate tables
 * Join the original table to itself
 * 
 * SELECT column_name(s)
 * FROM table1 T1, table2 T2
 * WHRER condition;
 * 
 * Self Join Example
 * The following SQL statement matches customers that are from the same city:
 * SELECT A.CustomerName AS 
 * CustomerName1, B.CustomerName As
 * CustomerName2, A.City
 * FROM Customers A, Customers B
 * WHERE A.CustomerID = B.CustomerID
 * AND A.City = B.City
 * ORDER BY A.City;
 */

/* 
 Advanced Joins: Left, Right, and Full Outer joins
 
 Left join(SQL Lite only does Left joins)
 Returns all records from the left table(table1),
 and the matched records from the right table(table2)
 The result is NULL from the right side, if there is no match
 
 The following SQL statement will select all customers, 
 and any orders they might have:
 SELECT C.CustomerName, O.OrderID
 FROM Customers C
 LEFT JOIN Orders O ON C.CustomerID
 = O.CustomerID
 ORDER BY C.CustomerName
 
 Right Join
 Returns all records from the right table(table2), 
 and the matched records from the left table(table1)
 The result is NULL from the left side, when there is no match
 
 The following SQL statement will return all employees,
 and any orders they might have placed:
 SELECT Orders.OrderID,
 Employees.LastName,
 Employees.FirstName
 FROM Orders
 RIGHT JOIN Employees on 
 Orders.EmployeeID = 
 Employees.EmployeeID
 ORDER BY Orders.OrderID;
 
 Differenct between right and left is 
 the order the tables are relating
 Left joins can be turned into right joins
 by reversing the order of the tables
 
 Full Outer Join
 Return all records when there is a match 
 in either left (table1) or right (table2) table records
 "Give me everything"
 
 Full Join / The following SQL statement 
 selects all customers, and all orders:
 
 SELECT Customers.CustomerName,
 Orders.OrderID
 FROM Customers
 FULL OUTER JOIN Orders ON
 Customers.CustomerID = 
 Orders.CustomerID
 ORDER BY Customers.CustomerName;
 */

/*
Unions

What is a Union?
The UNION operator is used to combine the result-set
of two or more SELECT statements
Each SELECT statement within UNION must have 
the same number of columns
Columns must have similar data types
The columns in each SELECT statement must be 
in the same order

Query 1: Basic Union Setup
SELECT column_name(s) FROM table1
UNION
SELECT column_names(s) FROM table2;

Query 2: Which German cities have suppliers
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country FROM
Suppliers
WHERE Country = 'Germany'
ORDER BY City;
 */

