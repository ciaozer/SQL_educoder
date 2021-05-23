-- 10) 查询人员表去过所有地点的人员姓名。查询结果依人员姓名的字典顺序排序。
--    请用一条SQL语句实现该查询：
use covid19mon;
select fullname
from person
where not exists(
	select *
	from location
	where not exists(
		select *
		from itinerary
		where itinerary.p_id = person.id and itinerary.loc_id = location.id
	)
)
order by fullname;
/*  end  of  your code  */ 