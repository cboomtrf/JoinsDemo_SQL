/**
 * SQL Joins: FULL OUTER JOIN
 * https://www.w3schools.com/sql/img_fulljoin.gif
 * 
 * FULL (OUTER) JOIN: Return all records when there is a match in either left or right table
 *
 * Syntax: Oracle / ANSI
 * 
 * Example: This FULL OUTER JOIN example would return all rows from the suppliers table and all rows from the orders table and whenever the join condition is not met, <nulls> would be extended to those fields in the result set.
 * If a supplier_id value in the suppliers table does not exist in the orders table, all fields in the orders table will display as <null> in the result set. If a supplier_id value in the orders table does not exist in the suppliers table, all fields in the suppliers table will display as <null> in the result set.
 * For FULL OUTER JOIN we cannot write the Oracle syntax without a union query, using datatype matching where columns do not exist in the other table.
 * 
 * Source: Leerboek Oracle SQL, W3C, TechOnTheNet
 *
**/

-- ANSI SYNTAX
SELECT columns
FROM table1
FULL [OUTER] JOIN table2
ON table1.column = table2.column
/

-- ANSI EXAMPLE
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.order_date
FROM suppliers
FULL OUTER JOIN orders
ON suppliers.supplier_id = orders.supplier_id
/

-- ORACLE SYNTAX 
SELECT same_columns
FROM table1
UNION [ALL]
SELECT same_columns
FROM table2
/

-- ORACLE SYNTAX EXAMPLE
SELECT supplier_id, supplier_name, TO_CHAR(NULL) "order_date"
FROM suppliers
UNION [ALL]
SELECT supplier_id, TO_CHAR(NULL) "supplier_name" , order_date
FROM orders
/