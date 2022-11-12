-- write a SQL query to count the number of customers with grades above the average in New York City. Return grade and count
select grade, count(customer_id) as count_customer from customer
group by grade
having grade > (select avg(grade) from customer 
where city='New York')

