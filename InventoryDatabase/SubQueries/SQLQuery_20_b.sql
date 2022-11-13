--  write a SQL query to find salespeople whose place of residence matches any city where customers live. 
--Return salesman_id, name, city and commission
--Assumption-salesperson who may or may not serves customer and lives in same city

SELECT *
FROM salesman 
WHERE city IN
    (SELECT city
     FROM customer);


