--write a SQL query to find the salespeople who deal the customers with more than one order. Return salesman_id, name, city and commission
select * from salesman a
where exists(
select * from customer b
where a.salesman_id=b.salesman_id 
and 1<
(select count(*) from orders c
where b.customer_id=c.customer_id))