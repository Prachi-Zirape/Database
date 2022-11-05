-- For those customers from the existing list who put one or more orders, 
--or which orders have been placed by the customer who is not on the list, create a 
--report containing the customer name, city, order number, order date, and purchase amount

select a.cust_name, a.city as 'customer_city', b.ord_no, b.ord_date,b.purch_amt
from customer a left outer join orders b
on a.customer_id=b.customer_id

