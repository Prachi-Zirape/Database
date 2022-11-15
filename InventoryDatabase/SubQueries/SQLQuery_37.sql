--write a SQL query to find the departments whose sanction amount is higher than the average 
--sanction amount for all departments. Return dpt_code, dpt_name and dpt_allotment.
select * from emp_department
where dpt_allotment>
(select avg(dpt_allotment)
from emp_department)
