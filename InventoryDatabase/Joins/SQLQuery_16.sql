-- generate a report with the customer name, city, order no. order date, 
--purchase amount for only those customers on the list who must have a grade and 
--placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.

select a.cust_name,a.city as 'customer_city', b.ord_no,b.ord_date,b.purch_amt, a.grade
from customer a full outer join orders b
on a.customer_id=b.customer_id
where a.grade is not null




