/* Cartesian(Cross) Joins
CROSS JOINs: each row from the first table 
joins with all the rows of another table

SELECT product_name
, unit_price
, company_name
FROM suppliers CROSS JOIN products;

Output will be the number of joins in 
the 1st table multiplied by the number of
rows in the 2nd table 

