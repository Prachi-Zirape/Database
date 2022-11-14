--write a SQL query to find orders where the order amount is less than the order 
--amount of a customer residing in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id

SELECT *
FROM orders
WHERE purch_amt < ANY
   (SELECT purch_amt
	FROM orders a, customer b
	WHERE  a.customer_id=b.customer_id
	AND b.city='London');

