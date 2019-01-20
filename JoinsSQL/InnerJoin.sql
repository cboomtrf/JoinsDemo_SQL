/**
 * SQL Joins: INNER JOIN
 * https://www.w3schools.com/sql/img_innerjoin.gif
 * 
 * (INNER) JOIN: Returns records that have matching values in both tables
 *
 * Syntax: Oracle / ANSI
 * 
 * Example: This INNER JOIN example would return all rows from the suppliers and orders tables where there is a matching supplier_id value in both the suppliers and orders tables.
 *
 * Source: Leerboek Oracle SQL, W3C, TechOnTheNet
 *
**/

-- ANSI SYNTAX
SELECT columns
FROM table1 
INNER JOIN table2
ON table1.column = table2.column
/

-- ANSI EXAMPLE
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.order_date
FROM suppliers 
INNER JOIN orders
ON suppliers.supplier_id = orders.supplier_id
/

-- ORACLE SYNTAX
SELECT columns
FROM table1, table2
WHERE table1.column = table2.column
/

-- ORACLE SYNTAX EXAMPLE
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.order_date
FROM suppliers, orders
WHERE suppliers.supplier_id = orders.supplier_id
/