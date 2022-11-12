-- write a SQL query to find the employees and their managers. 
--Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager

select a.first_name as 'Manger_Name' , b.first_name as 'Employee_Name'
from employees a right outer join employees b
on a.employee_id=b.manager_id