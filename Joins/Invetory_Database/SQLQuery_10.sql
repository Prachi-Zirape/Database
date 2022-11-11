--make a report with customer name, city, order number, order date, and order amount in ascending order according to the order 
--date to determine whether any of the existing customers have placed an order or not

select a.cust_name,a.city,b.ord_no,b.ord_date,b.purch_amt
from customer a left outer join orders b
on a.customer_id=b.customer_id
order by b.ord_date

