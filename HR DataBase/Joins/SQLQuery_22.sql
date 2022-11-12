-- SQL query to find the department name, full name (first and last name) of the manager and their city.
select a.first_name, a.last_name, b.department_name, c.city
from employees a inner join departments b
on a.department_id=b.department_id
inner join locations c
on b.location_id=c.location_id