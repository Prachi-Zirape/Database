-- write a SQL query to find the most expensive product of each company. Return Product Name, Price and Company.
select p.pro_name as 'product_name', p.pro_price as 'Price', c.com_name as 'Company'
from item_mast p, company_mast c
where p.pro_com=c.com_id and
p.pro_price=(
select max(p.pro_price) from item_mast p
where p.pro_com=c.com_id)





