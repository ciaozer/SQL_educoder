-- 14) 依据密切接触表的内容查询每个地点的密切接触者的数量，列出内容包括：地点名称，密接者人数。
--     人数由统计获得，列名命名为close_contact_number.查询结果依密接者人数降序排列。
--  密接者人数相同时，依地点名称排序。
--    请用一条SQL语句实现该查询：
use covid19mon;
go
select location_name, count(*) close_contact_number
from location, close_contact
where location.id = close_contact.loc_id
group by location_name 
order by close_contact_number desc, location_name;

/*  end  of  your code  */ 