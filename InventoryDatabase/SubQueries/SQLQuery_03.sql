-- write a SQL query to find all orders generated by the salespeople who may work for customers whose id is 3007.
--Return ord_no, purch_amt, ord_date, customer_id, salesman_id

select * from orders
where salesman_id=
(select salesman_id from orders
where customer_id=3007)