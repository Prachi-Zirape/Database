-- write a SQL query to find full name (first and last name), and salary of all employees working in any department in the city of London.
select c.first_name, c.last_name, c.salary 
from departments a inner join employees c
on a.department_id=c.department_id
inner join locations b
on a.location_id=b.location_id
where b.city='London'