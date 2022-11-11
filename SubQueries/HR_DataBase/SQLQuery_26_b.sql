-- SQL query to find the department name, department ID, and number of employees in each department.
SELECT d.department_name,
       e.*
FROM departments d
JOIN
  (SELECT count(employee_id),
          department_id
   FROM employees e
   GROUP BY department_id)  on (e.department_id=d.department_id)
