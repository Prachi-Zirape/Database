-- find out which employees have or do not have a department. Return first name, last name, department ID, department name.
select a.first_name, a.last_name, b.department_id, b.department_name
from employees a left join departments b
on a.department_id =b.department_id