--  write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
--The results should be sorted by ascending customer_id.

select a.customer_id,a.cust_name, a.city as 'customer_city', a.grade, b.name, b.city as 'salesman_city'
from customer a left join salesman b
on a.salesman_id=b.salesman_id
order by a.customer_id
