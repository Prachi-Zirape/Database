-- write a SQL query to calculate the average price of each manufacturer's product along with their name. Return Average Price and Company.

select a.com_name, b.pro_name as product_name, avg(b.pro_price) as avg_price
from company_mast a inner join item_mast b
on a.com_id=b.pro_com
group by b.pro_name, a.com_name






