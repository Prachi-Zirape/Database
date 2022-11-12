--  write a SQL query to find out which departments have at least two employees. 
--Group the result set on country name and city. Return country name, city, and number. 

--DO IT just for employees and department tables
select count(a.employee_id) as'Number of employees', b.department_name
from employees a inner join departments b
on a.department_id=b.department_id
group by department_name
having count(a.employee_id)>2



