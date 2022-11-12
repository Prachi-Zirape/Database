--  write a SQL query to find all orders generated by London-based salespeople. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.
select * from orders
where salesman_id in
(select salesman_id from salesman
where city='London')