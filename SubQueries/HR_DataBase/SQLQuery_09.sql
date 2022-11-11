-- display the department name, city, and state province for each department. 

select a.department_name, b.city, b.state_province
from departments a inner join locations b
on a.location_id=b.location_id
