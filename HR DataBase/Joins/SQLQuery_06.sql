--  find all departments, including those without employees. Return first name, last name, department ID, department name

select a.department_id,a.department_name, b.first_name, b.last_name from
departments a left join employees b
on a.department_id=b.department_id

