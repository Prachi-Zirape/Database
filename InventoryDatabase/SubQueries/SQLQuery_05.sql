-- write a SQL query to find all the orders generated in New York city. 
--Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select * from orders 
where salesman_id IN
(select salesman_id from salesman
where city='New York')
