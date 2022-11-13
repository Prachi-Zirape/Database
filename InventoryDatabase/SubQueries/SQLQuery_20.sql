--  write a SQL query to find salespeople whose place of residence matches any city where customers live. 
--Return salesman_id, name, city and commission
--Assumption-salesperson who serves customer and lives in same city

select * from salesman a
where salesman_id IN 
(select salesman_id from customer b
where a.city=b.city)


