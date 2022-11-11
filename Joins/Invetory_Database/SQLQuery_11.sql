--generate a report with customer name, city, order number, order date, order amount, salesperson name, 
--and commission to determine if any of the existing customers have not placed orders or 
--if they have placed orders through their salesman or by themselves

select a.cust_name, a.city as 'customer_city', b.ord_no,b.ord_date, b.purch_amt, c.name as 'salesman_name', c.commission
from customer a left join orders b
on a.customer_id=b.customer_id
left join salesman c
on a.salesman_id=c.salesman_id


