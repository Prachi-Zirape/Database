-- write a SQL query to find those orders where every order amount is less than the maximum 
--order amount of a customer who lives in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id

select * from orders
where purch_amt<(
select max(purch_amt) from orders a, customer b
where a.customer_id=b.customer_id
and city='London')


