--  write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id

select * from company_mast a inner join item_mast b
on a.com_id=b.pro_com


