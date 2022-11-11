-- SQL query to find the department name and the full name (first and last name) of the manager.

select b.first_name, b.last_name, a.department_name,a.manager_id
from departments a inner join employees b
on a.manager_id=b.employee_id
where a.manager_id>0


