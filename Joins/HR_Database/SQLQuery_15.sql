--write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. 
--Return department name, average salary and number of employees

select b.department_name, avg(a.salary), count(a.employee_id) as 'Number of Employees'
from employees a inner join departments b
on a.department_id=b.department_id
--where a.commission_pct>0
group by department_name


