 use covid19mon;

-- 2) 查询行程表中人员编号大于30的同一个人的接续行程信息。输出内容包括：
-- 人员编号,姓名,重合时间,起始地点id,起始地点,结束地点id,结束地点。
-- 查询结果依人员编号排序，如同一人员有多个接续行程，再按重合时间排序。
-- 请用一条SQL语句实现该查询：
select i1.p_id id, fullname, telephone, i1.e_time reclosing_time, l1.id loc1, l1.location_name address1, l2.id loc2, l2.location_name address2
from person, itinerary i1, itinerary i2, location l1, location l2
where i1.e_time = i2.s_time and i1.p_id > 30 and i1.p_id = i2.p_id and i1.loc_id = l1.id and i2.loc_id = l2.id and i1.p_id = person.id
order by id, reclosing_time;
/*  end  of  your code  */