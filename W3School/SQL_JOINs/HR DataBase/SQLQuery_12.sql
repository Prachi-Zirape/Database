--  query to find the employees who work in the same department as the employee with the last name Taylor.
--Return first name, last name and department ID

select a.first_name, a.last_name,a.department_id
from employees a inner join employees b
on a.employee_id=b.employee_id
where b.last_name='Taylor'