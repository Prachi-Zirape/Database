-- locate those salespeople who do not live in the same city where their 
--customers live and have received a commission of more than 12% from the company. 
--Return Customer Name, customer city, Salesman, salesman city, commission.

select a.cust_name, a.city as 'customer_city', b.name, b.city as 'salesman_city', b.commission
from customer a inner join salesman b
on a.salesman_id=b.salesman_id
where a.city<>b.city and b.commission>0.12
