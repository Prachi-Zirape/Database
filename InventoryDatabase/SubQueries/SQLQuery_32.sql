--  write a SQL query to calculate the average price of each manufacturer's product of 350 or more. Return Average Price and Company.
select a.com_name, avg(b.pro_price) from 
company_mast a inner join item_mast b
on a.com_id=b.pro_com
group by a.com_name
having avg(b.pro_price)>=350





