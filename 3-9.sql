-- 9) 写一条带NOT EXISTS 子查询的SQL语句实现下述查询要求：
--   查询人员表中没有去过地点“Today便利店”的人数。请给统计出的人数命名为number。
--   请用一条SQL语句实现该查询：
use covid19mon;
select count(*) number
from person 
where not exists(
	select *
	from itinerary, location
	where itinerary.p_id = person.id and itinerary.loc_id = location.id and location_name = 'Today便利店'
)


/*  end  of  your code  */