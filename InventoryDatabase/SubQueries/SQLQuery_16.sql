--  write a SQL query to find salespeople who deal with multiple customers. Return salesman_id, name, city and commission
select * from salesman
where salesman_id in
(select salesman_id from customer
group by salesman_id
having count(customer_id)>1)
