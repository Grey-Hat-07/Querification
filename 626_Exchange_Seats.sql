#Method 1: 
# select
# if(id < (select count(*) from seat), if(id mod 2=0, id-1, id+1), if(id mod 2=0, id-1, id)) as id, student
# from seat
# order by id asc

#Method 2:
select  
      case 
        when id % 2 = 0 then id - 1
        when id % 2 = 1 and id < (select count(*) from seat)then id + 1
        else id
      end as id, 
    student from seat
    order by id;