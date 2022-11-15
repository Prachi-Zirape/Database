--write a SQL query to find which departments have more than two employees. Return dpt_name.
select a.dpt_name, count(b.emp_idno) as 'number of emps' from 
emp_department a inner join emp_details b
on a.dpt_code=b.emp_dept
group by a.dpt_name
having count(b.emp_idno)>1
