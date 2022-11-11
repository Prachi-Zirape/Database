--write a SQL query to calculate the difference between the maximum salary and the salary of all
--the employees who work in the department of ID 80. Return job title, employee name and salary difference.

select b.job_title,a.first_name, b.max_salary-a.salary as 'salary difference'
from employees a inner join jobs b
on a.job_id=b.job_id
where department_id=80


