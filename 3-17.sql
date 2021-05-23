-- 17 查询隔离点中，房间数第二多的隔离点名称和房间数。
--    请用一条SQL语句实现该查询：
use covid19mon;
go
select top 1 location_name, capacity
from isolation_location i1
where exists(
	select count(distinct capacity)
	from isolation_location i2
	where i1.capacity < i2.capacity)
--order by capacity; 感觉有问题
/*  end  of  your code  */