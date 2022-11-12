--find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
select a.cust_name,a.city,b.name,b.commission from customer a inner join salesman b
on a.salesman_id=b.salesman_id
