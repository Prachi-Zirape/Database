--  write a SQL query to calculate the average salary of employees for each job title. 
select b.job_title,avg(a.salary)
from employees a inner join jobs b
on a.job_id=b.job_id
group by b.job_title


