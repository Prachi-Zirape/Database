-- SQL query to find the department name, department ID, and number of employees in each department.
select a.department_name,a.department_id, count(b.employee_id) as 'number_of_emps'
from departments a inner join employees b
on a.department_id=b.department_id
group by a.department_name,a.department_id
