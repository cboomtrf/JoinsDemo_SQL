/**
 * SQL Joins: LEFT OUTER JOIN
 * https://www.w3schools.com/sql/img_leftjoin.gif
 * 
 * LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table
 *
 * Syntax: Oracle / ANSI
 * 
 * Example: This LEFT OUTER JOIN example would return all rows from the suppliers table and only those rows from the orders table where the joined fields are equal.
 * If a supplier_id value in the suppliers table does not exist in the orders table, all fields in the orders table will display as <null> in the result set.
 * 
 * Source: Leerboek Oracle SQL, W3C, TechOnTheNet
 *
**/

-- ANSI SYNTAX
SELECT columns
FROM table1
LEFT [OUTER] JOIN table2
ON table1.column = table2.column;
/

-- ANSI EXAMPLE
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.order_date
FROM suppliers
LEFT OUTER JOIN orders
ON suppliers.supplier_id = orders.supplier_id;
/

-- ORACLE SYNTAX
SELECT columns
FROM table1, table2
WHERE table1.column = table2.column(+);
/

-- ORACLE SYNTAX EXAMPLE
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.order_date
FROM suppliers, orders
WHERE suppliers.supplier_id = orders.supplier_id(+);
/