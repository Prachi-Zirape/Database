-- write a SQL query to find all those employees who work in department ID 60 or 40. 
--Return first name, last name, department number and department name.

select a.first_name, a.last_name, b.department_id, b.department_name
from employees a inner join departments b
on a.department_id=b.department_id
where a.department_id in (40,60)
