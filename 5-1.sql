/*
(1)用create function语句创建符合以下要求的函数：
   依据人员编号计算其到达所有地点的次数(即行程表中的记录数)。
   函数名为：Count_Records。函数的参数名可以自己命名:*/
use covid19mon;
drop function if exists Count_Records;
go

create function Count_Records(@p_id int)
returns int
as
begin
    declare @result int 
	select @result = count(*)
	from itinerary
	where itinerary.p_id = @p_id;
    return @result; 
end
go
/*
(2) 利用创建的函数，仅用一条SQL语句查询在行程表中至少有3条行程记录的人员信息，
查询结果依人员编号排序。*/

select *
from person
where dbo.Count_Records(id) >= 3
order by id;
