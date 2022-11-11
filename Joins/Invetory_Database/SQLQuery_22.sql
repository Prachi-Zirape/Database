-- display the item name, price, and company name of all the products

select a.pro_id, a.pro_name,a.pro_price, b.com_id, b.com_name
from item_mast a left join company_mast b
on a.pro_com=b.com_id


