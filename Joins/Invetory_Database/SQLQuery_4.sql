-- find salespeople who received commissions of more than 12 percent from 
--the company. Return Customer Name, customer city, Salesman, commission. 
select a.cust_name,a.city,b.name as 'salesman_name', b.commission
from customer a inner join salesman b
on a.salesman_id=b.salesman_id
where b.commission>0.12

