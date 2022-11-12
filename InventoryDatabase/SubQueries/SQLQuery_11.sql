-- write a SQL query to find salespeople who had more than one customer. Return salesman_id and name
select salesman_id, name from salesman
where salesman_id in
(select salesman_id from customer
group by salesman_id
having count(customer_id)>1)
