-- create a Cartesian product between salesperson and customer, i.e. each salesperson will 
--appear for all customers and vice versa for that salesperson who belongs to that city 

select * from salesman a cross join customer b
where a.city = b.city





