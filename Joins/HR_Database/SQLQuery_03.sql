--write a SQL query to find the first name, last name, salary, and job grade for all employees
select a.first_name, a.last_name,a.salary,b.grade_level
from employees a left join job_grades b
on a.salary between b.highest_sal and b.lowest_sal