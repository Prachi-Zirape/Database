-- write a SQL query to find the details of an order. 
--Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

select a.ord_no,a.ord_date,a.purch_amt,b.cust_name,b.grade,c.name as 'salesman_name',c.commission
from orders a left join customer b on a.customer_id=b.customer_id
left join salesman c on a.salesman_id=c.salesman_id