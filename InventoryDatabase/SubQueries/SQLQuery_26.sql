-- write a SQL query to find those customers whose grades are higher than those living in New York City.
--Return customer_id, cust_name, city, grade and salesman_id

select * from customer
where grade> all(
select grade from customer
where city='New York')


