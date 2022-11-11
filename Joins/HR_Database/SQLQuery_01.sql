--write a SQL query to find the first name, last name, department number, and department name for each employee
select a.first_name, a.last_name, b.department_id,b.department_name
from employees a left join departments b
on a.department_id=b.department_id