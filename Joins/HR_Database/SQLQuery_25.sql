-- write a SQL query to find full name (first and last name), job title, start and end date of 
--last jobs of employees who did not receive commissions.

select c.first_name, c.last_name,a.job_title,b.start_date, b.end_date
from jobs a inner join job_history b
on a.job_id=b.job_id
inner join employees c
on b.employee_id=c.employee_id
where c.commission_pct=0