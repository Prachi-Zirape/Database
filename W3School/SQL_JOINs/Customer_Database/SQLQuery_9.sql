--find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. 
--The result should be ordered by ascending customer_id.
select a.cust_name,a.city as 'Custpmer_City',a.grade,b.name as 'Salesman_Name',b.city as 'Customer_City'
from customer a left join salesman b
on a.salesman_id=b.salesman_id
where a.grade<300
order by a.customer_id