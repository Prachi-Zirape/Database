--generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.

select * from salesman a left join customer b
on a.salesman_id=b.salesman_id
order by a.name desc



