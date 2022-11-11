--  SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.
--select b.pro_name,max(b.pro_price),a.com_name
--from company_mast a inner join item_mast b
--on a.com_id=b.pro_com
--group by a.com_name, b.pro_name

select a.pro_name, a.pro_price,b.com_name
from company_mast b inner join item_mast a
on b.com_id=a.pro_com
and a.pro_price=
(select max(a.pro_price)
 from item_mast a
 where a.pro_com=b.com_id
 )



