-- 7) 查询正在使用的隔离点名,查询结果按隔离点的编号排序。
--    请用一条SQL语句实现该查询：


use covid19mon;
select location_name
from isolation_location
where exists(
	select *
	from isolation_record
	where isolation_location.id = isolation_record.isol_loc_id and state = 1);

/*  end  of  your code  */