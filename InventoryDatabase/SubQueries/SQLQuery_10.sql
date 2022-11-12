-- write SQL query to find the customers who placed orders on 17th August 2012. 
--Return ord_no, purch_amt, ord_date, customer_id, salesman_id and cust_name..

select * from customer 
where customer_id in 
(select customer_id from orders
where ord_date='2012-08-17')
