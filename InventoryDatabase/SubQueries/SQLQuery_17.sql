--write a SQL query to find salespeople who deal with a single customer. Return salesman_id, name, city and commission

select * from salesman
where salesman_id IN
(select salesman_id from customer
group by salesman_id
having count(customer_id)=1)