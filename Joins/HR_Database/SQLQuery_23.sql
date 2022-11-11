-- write a SQL query to calculate the number of days worked by employees
--in a department of ID 80. Return employee ID, job title, number of days worked.

select employee_id,job_title,datediff(day, start_date,end_date) as 'Number of Days Worked'
from job_history inner JOIN jobs 
on job_history.job_id=jobs.job_id
where department_id=80 