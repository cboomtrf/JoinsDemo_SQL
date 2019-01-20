/**
 * SQL Joins: RIGHT OUTER JOIN
 * https://www.w3schools.com/sql/img_rightjoin.gif
 * 
 * RIGHT (OUTER) JOIN: Return all records from the right table, and the matched records from the left table
 *
 * Syntax: Oracle / ANSI
 * 
 * Example: This RIGHT OUTER JOIN example would return all rows from the orders table and only those rows from the suppliers table where the joined fields are equal.
 * If a supplier_id value in the orders table does not exist in the suppliers table, all fields in the suppliers table will display as <null> in the result set.
 *
 * Source: Leerboek Oracle SQL, W3C, TechOnTheNet
 *
**/

-- ANSI SYNTAX
SELECT columns
FROM table1
RIGHT [OUTER] JOIN table2
ON table1.column = table2.column
/

-- ANSI EXAMPLE
SELECT orders.order_id, orders.order_date, suppliers.supplier_name
FROM suppliers
RIGHT OUTER JOIN orders
ON suppliers.supplier_id = orders.supplier_id
/

-- ORACLE SYNTAX
SELECT columns
FROM table1, table2
WHERE table1.column(+) = table2.column
/

-- ORACLE SYNTAX EXAMPLE
SELECT orders.order_id, orders.order_date, suppliers.supplier_name
FROM suppliers, orders
WHERE suppliers.supplier_id(+) = orders.supplier_id
/