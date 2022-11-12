-- write a SQL query to determine the commission of the salespeople who has served customers in Paris. Return commission

select * from salesman
where salesman_id IN
(select salesman_id from customer
where city='Paris')
