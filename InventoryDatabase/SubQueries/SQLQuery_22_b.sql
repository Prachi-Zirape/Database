--write a SQL query to find all those customers with a higher grade than all the customers alphabetically 
--below the city of New York. Return customer_id, cust_name, city, grade, salesman_id.
SELECT *
FROM customer
WHERE grade > ANY
   (SELECT grade
	FROM CUSTOMER
	WHERE  city < 'New York');


