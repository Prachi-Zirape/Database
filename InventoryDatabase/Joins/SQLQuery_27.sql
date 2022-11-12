--   display the first and last names of each employee, as well as the department name and sanction amount
select a.emp_fname,a.emp_lname,b.dpt_name,b.dpt_allotment
from emp_details a inner join emp_department b
on a.emp_dept=b.dpt_code







