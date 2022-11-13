--  write a SQL query to find all those salespeople whose names appear alphabetically lower than the customer’s name. 
--Return salesman_id, name, city, commission.

select * from salesman a
where exists(
select * from customer b
where a.name<b.cust_name)
