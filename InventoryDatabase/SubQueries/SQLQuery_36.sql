--write a SQL query to find those employees who work for the department where the 
--departmental allotment amount is more than Rs. 50000. Return emp_fname and emp_lname
select emp_fname,emp_lname from emp_details
where emp_dept in(
select dpt_code from emp_department
where dpt_allotment>=50000)



