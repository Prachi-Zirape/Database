--write a SQL query to find all employees who joined on 1st January 1993 and left on or before 31 August 1997. 
--Return job title, department name, employee name, and joining date of the job.  
select b.first_name, b.last_name as 'Full_Name', c.job_title, d.department_name,a.start_date as 'joining_date', a.end_date
from job_history a inner join employees b
on a.department_id=b.department_id
inner join jobs c on b.job_id=c.job_id
inner join departments d 
on b.department_id=a.department_id
where a.start_date>='1993-01-01'and a.end_date<='2002-08-31'

