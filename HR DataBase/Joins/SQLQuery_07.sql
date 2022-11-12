--   find the employees who earn less than the employee of ID 182. Return first name, last name and salary.

SELECT E.first_name, E.last_name, E.salary 
  FROM employees E 
   JOIN employees S
     ON E.salary < S.salary 
      AND S.employee_id = 102;


