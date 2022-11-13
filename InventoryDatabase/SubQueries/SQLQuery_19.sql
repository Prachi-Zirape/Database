-- write a SQL query to find the salespeople who deal with those customers who live in the same city. Return salesman_id, name, city and commission
select * from salesman a
where city =ANY(
select city from customer)
