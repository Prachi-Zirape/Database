--  calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name.
select a.com_name, avg(b.pro_price) 
from company_mast a inner join item_mast b
on a.com_id=b.pro_com
group by a.com_name
having avg(b.pro_price)>=350


