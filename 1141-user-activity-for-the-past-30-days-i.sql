
# SOLUTION 1 : SIMPLE
select activity_date as day, count(distinct user_id) as active_users from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date;

#SOLUTION 2 : FUNCTION BASED
Select
    activity_date as day,
    count(distinct user_id) as active_users
from Activity
where
    datediff('2019-07-27', activity_date) < 30
    and
    activity_date <= '2019-07-27'
group by activity_date;

# The DATEDIFF Function : DATEDIFF(date_1, date_2) 
#                        returns difference between two dates