--  create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for 
--every customer and vice versa for those salesmen who belong to a city and customers who require a grade.

select * from salesman a cross join customer b
where b.grade is not null and a.city is not null




