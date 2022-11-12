-- list all salespersons along with customer name, city, grade, order number, date, and amount.
select a.name, b.cust_name, b.city as customer_city, b.grade, c.ord_no, c.ord_date,c.purch_amt
from salesman a left outer join customer b
on a.salesman_id=b.salesman_id
left outer join orders c
on a.salesman_id=c.salesman_id


