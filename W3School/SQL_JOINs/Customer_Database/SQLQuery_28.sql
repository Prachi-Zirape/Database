--    find the departments with budgets more than Rs. 50000 and display the first name and last name of employees
select a.emp_fname, a.emp_lname from emp_details a inner join emp_department b
on a.emp_dept=b.dpt_code
where dpt_allotment>50000







