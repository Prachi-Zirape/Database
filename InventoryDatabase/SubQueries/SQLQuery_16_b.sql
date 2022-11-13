--  write a SQL query to find salespeople who deal with multiple customers. Return salesman_id, name, city and commission
select * from salesman
where salesman_id IN(
select distinct salesman_id
from customer a
where exists (
select * from customer b
where a.salesman_id=b.salesman_id 
and a.cust_name<> b.cust_name))