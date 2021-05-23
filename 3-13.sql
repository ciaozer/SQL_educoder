-- 13) 筛查发现，靳宛儿为无症状感染者。现需查询其接触者姓名名单和电话，以便通知并安排隔离。查询结题按姓名排序。
--    凡行程表中，在同一地点逗留时间与靳宛儿有交集的，均视为接触者。
--    请用一条SQL语句实现该查询：
use covid19mon;
go
select fullname, telephone
from person p1
where p1.fullname != '靳宛儿' and exists(
	select *
	from itinerary i1
	where i1.p_id = p1.id and exists(
		select *
		from itinerary i2, person p2
		where i2.p_id = p2.id and p2.fullname = '靳宛儿' and i1.loc_id = i2.loc_id and i1.s_time <= i2.e_time and i1.e_time >= i2.s_time
	)
)
order by fullname;
/*  end  of  your code  */ 