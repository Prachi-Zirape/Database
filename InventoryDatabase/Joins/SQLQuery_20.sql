--  make a Cartesian product between salesman and customer i.e. each salesman will appear for 
--all customers and vice versa for those salesmen who must belong to a city which is not the same as 
--his customer and the customers should have their own grade.

select * from salesman a cross join customer b
where b.grade is not null and a.city <> b.city and a.city is not null




