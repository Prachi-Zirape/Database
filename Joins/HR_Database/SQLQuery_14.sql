--calculate the difference between the maximum salary of the job and the employee's salary. 
--Return job title, employee name, and salary difference.

select b.job_title,a.first_name, a.last_name, b.max_salary-a.salary as 'salary difference'
from employees a inner join jobs b
on a.job_id=b.job_id


