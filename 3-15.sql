-- 15) 查询感染人数最多的人员编号，姓名，和被其感染的人数。
--     感染人数由统计所得，命名为infected_number.
-- 说-明：
--     由于数据集close_contact表中的被密接者大多无诊断记录（无法知晓其是否被感染）。
--     增补数据集会影响其它评测，更有同学此前已完成评测。所以，此题暂简化为被密接者就是感染者。
-- 请用一条SQL语句实现该查询：
use covid19mon;
go
select top 1 case_p_id, fullname, count(distinct p_id) infected_number
from person, close_contact
where person.id = case_p_id
group by case_p_id, fullname
--为什么加fullname
order by infected_number desc;

/*  end  of  your code  */