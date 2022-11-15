--write a SQL query to find which departments have more than two employees. Return dpt_name.

select dpt_name from emp_department
where dpt_code in (
select emp_dept
from emp_details
group by emp_dept
having count(*)>2)
