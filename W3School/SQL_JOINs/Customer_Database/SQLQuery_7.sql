--  join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned
SELECT * 
FROM orders 
NATURAL JOIN customer  
NATURAL JOIN salesman
