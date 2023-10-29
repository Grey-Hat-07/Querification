-- Write your PostgreSQL query statement below
with cte_dates as (
select distinct visited_on + interval '-6 days' as start_visited_on, visited_on 
from Customer
where visited_on >= (select min(visited_on) + interval '6 days' from Customer)
)
select d.visited_on, round(sum(c.amount),2) as amount, round(sum(c.amount)*1.00/7,2) as average_amount
from cte_dates d
join Customer c on (c.visited_on >= d.start_visited_on and c.visited_on <= d.visited_on)
group by d.visited_on
order by d.visited_on;