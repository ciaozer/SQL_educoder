-- 16) 查询2021-02-02 10:00:00到14:00:00期间，行程记录最频繁的3个人的姓名及行程记录条数。
--     记录条数命名为record_number. 记录数并列的，按姓名顺序排列。
--    请用一条SQL语句实现该查询：
use covid19mon;
go
select top 3 fullname, count(*) record_number
from person, itinerary
where person.id = itinerary.p_id and s_time <= '2021.02.02 14:00:00' and e_time >= '2021.02.02 10:00:00'
--group by p_id 
--为什么不对
group by fullname
order by record_number desc, fullname;

/*  end  of  your code  */