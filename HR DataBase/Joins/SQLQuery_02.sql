--write a SQL query to find the first name, last name, department, city, and state province for each employee
select a.first_name, a.last_name, b.department_name,c.city, c.state_province 
from employees a left join departments b 
on a.department_id=b.department_id
left join locations c 
on b.location_id=c.location_id