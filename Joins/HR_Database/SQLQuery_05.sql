--  SQL query to find those employees whose first name contains the letter ‘z’. 
--Return first name, last name, department, city, and state province

select a.first_name, a.last_name, b.department_name, c.city,c.state_province
from employees a inner join departments b
on a.department_id=b.department_id
inner join locations c
on b.location_id=c.location_id
where a.first_name like '%z%'

