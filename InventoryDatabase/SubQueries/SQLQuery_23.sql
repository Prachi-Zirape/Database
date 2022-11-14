--write a SQL query to find all those orders whose order amount exceeds at least one of 
--the orders placed on September 10th 2012. Return ord_no, purch_amt, ord_date, customer_id and salesman_id
select * from orders
where purch_amt> ANY(
select purch_amt from orders
where ord_date='2012-09-10')
