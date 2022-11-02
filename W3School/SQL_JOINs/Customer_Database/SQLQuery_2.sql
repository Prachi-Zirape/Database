select a.ord_no,a.purch_amt, b.cust_name, b.city from orders a inner join customer b
on a.salesman_id=b.salesman_id
where a.purch_amt between 500 and 2000