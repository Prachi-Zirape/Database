-- write a SQL query to find all those customers who have different grades than any customer who lives in Dallas City. 
--Return customer_id, cust_name,city, grade and salesman_id. 

select * from customer
where grade not in
(select grade from customer
where city='Dallas')




