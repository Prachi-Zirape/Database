--https://www.windowfunctions.com/questions/

--01. We would like to find the total weight of cats grouped by age. But only return those groups with a total weight larger than 12.
select age, sum(weight) as total_weight 
 from cats 
group by age
having sum(weight)>12
order by age
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--02--The cats must be ordered by name and will enter an elevator one by one. We would like to know what the running total weight is.
select name, sum(weight) over (order by name) as running_total_weight
 from cats order by name
--------------------------------------Next-----------------------------------------------------------------------------------------------------

 --03--We would like to know what the running total weight of the cats is.
 --The cats must be ordered first by breed and second by name. They are about to enter an elevator one by one.
 --When all the cats of the same breed have entered they leave.

 select name, breed, sum(weight) over (partition by breed order by breed,name) as running_total_weight
 from cats 
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --04--The first and last cats are content to have an average weight of consisting of 2 cats not 3.
 --The cats would like to see the average of the weight of them, the cat just after them and the cat just before them.

select name, weight, avg(weight) over (order by weight ROWS between 1 preceding and 1 following) as average_weight
 from cats 
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --05--The cats must be ordered by weight descending and will enter an elevator one by one.
 --We would like to know what the running total weight is.
 --If two cats have the same weight they must enter separately

 select name,  sum(weight) over(order by weight desc ROWS between unbounded preceding and current row) as running_total_weight
 from cats 
 --------------------------------------Next-----------------------------------------------------------------------------------------------------
 
 --06-The cats form a line grouped by color. Inside each color group the cats order themselves by name. Every cat must have 
 --a unique number for its place in the line.
 --We must assign each cat a unique number while maintaining their color & name ordering.

 select  row_number() over(order by  color,name)
as unique_number, name, color
 from cats 
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --07--We would like to find the fattest cat. Order all our cats by weight.
 --The two heaviest cats should both be 1st. The next heaviest should be 3rd.

 select rank() over (order by weight desc) as ranking, weight, name
 from cats 
order by ranking, name
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --08--For cats age means seniority, we would like to rank the cats by age (oldest first).
--However we would like their ranking to be sequentially increasing.
select dense_rank() over (order by age desc) as r, name, age
 from cats 
order by r, name
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --09--Each cat would like to know what percentage of other cats weigh less than it

 select name, weight, percent_rank() over (order by weight )*100 as percent
 from cats 
order by weight
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --10--Each cat would like to know what weight percentile it is in. This requires casting to an integer
 select name, weight, cast(cume_dist() over (order by weight) * 100 as integer) as percent
 from cats order by weight
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

 --11--We are worried our cats are too fat and need to diet.
--We would like to group the cats into quartiles by their weight.

 select name, weight, ntile(4) over(order by weight) as weight_quartile
 from cats 
order by weight
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

--12.--Cats are fickle. Each cat would like to lose weight to be the equivalent weight of the cat weighing just less than it.
--Print a list of cats, their weights and the weight difference between them and the nearest lighter cat ordered by weight.

select name, weight, coalesce(weight-lag(weight,1) over (order by weight), 0) as weight_to_lose 
 from cats 
order by weight
 --------------------------------------Next-----------------------------------------------------------------------------------------------------

--13--The cats now want to lose weight according to their breed. Each cat would like to lose weight to 
--be the equivalent weight of the cat in the same breed weighing just less than it.
--Print a list of cats, their breeds, weights and the weight difference between them and the nearest lighter cat of the same breed.

select name, breed, weight, coalesce(weight-lag(weight,1) over (partition by breed order by weight),0) as weight_to_lose
 from cats 
order by weight
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--14--Cats are vain. Each cat would like to pretend it has the lowest weight for its color.
--Print cat name, color and the minimum weight of cats with that color.
select name, color, first_value(weight) over (partition by color order by weight) as weight_by_color
 from cats 
order by color, name
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--15--Each cat would like to see the next heaviest cat's weight when grouped by breed. If there is no heavier cat print 'fattest cat'
--Print a list of cats, their weights and either the next heaviest cat's weight or 'fattest cat'
select name,weight, breed, coalesce(cast(lead(weight,1) over(partition by breed order by weight) as varchar),'fattest cat') as next_heaviest
 from cats 
order by weight
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--16--The cats have decided the correct weight is the same as the 4th lightest cat. All cats shall have this weight. 
--Except in a fit of jealous rage they decide to set the weight of the lightest three to 99.9
--Print a list of cats, their weights and their imagined weight
select name, weight, coalesce(nth_value(weight,4) over (order by weight),99.9) as imagined_weight
 from cats 
order by weight
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--17--The cats want to show their weight by breed. The cats agree that they should show the second lightest 
--cat's weight (so as not to make other cats feel bad)
--Print a list of breeds, and the second lightest weight of that breed

select distinct(breed), nth_value(weight, 2) over ( partition by breed order by weight
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING ) as imagined_weight
from cats order by breed;
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--18--This SQL function can be made simpler by using the WINDOW statement. Please try and use the WINDOW clause.
--Each cat would like to see what half, third and quartile they are in for their weight.

select name, weight,ntile(2) over(ntile_window) as by_half, ntile(3) 
over ntile_window as thirds, ntile(4) 
over ntile_window as quart from cats 
window ntile_window as (order by weight) 
order by weight, name
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--19--We would like to group our cats by color
--Return 3 rows, each row containing a color and a list of cat names

select color, array_agg(name) as names
 from cats 
group by color
order by color desc
--------------------------------------Next-----------------------------------------------------------------------------------------------------

--20--We would like to find the average weight of cats grouped by breed. 
--Also, in the same query find the average weight of cats grouped by breed whose age is over 1
select breed, avg(weight) as average_weight, avg(weight) filter(where age>1) as average_old_weight 
 from cats 
group by breed
order by breed











