--   write a SQL query to find those orders that are equal or higher than the average amount of the orders. 
--Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select * from orders a
where purch_amt>=
(select avg(purch_amt) from orders b
where a.customer_id=b.customer_id)
