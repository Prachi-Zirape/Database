--  write a SQL query to find out the full name (first and last name) of the employee with
--an ID and the name of the country where he/she is currently employed

select a.first_name, a.last_name, b.department_name, c.country_name
from employees a inner join departments b
on a.department_id=b.department_id
inner join locations d 
on d.location_id=b.location_id
inner join countries c
on c.country_id=d.country_id
