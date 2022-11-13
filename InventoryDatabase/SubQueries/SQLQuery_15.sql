--  extract all data from the customer table if and only if one or more of the customers in the customer table are located in London
select * from customer
where 1<=
(select count(customer_id) from customer
where city='London')