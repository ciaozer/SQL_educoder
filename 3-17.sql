-- 17 ��ѯ������У��������ڶ���ĸ�������ƺͷ�������
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select top 1 location_name, capacity
from isolation_location i1
where exists(
	select count(distinct capacity)
	from isolation_location i2
	where i1.capacity < i2.capacity)
--order by capacity; �о�������
/*  end  of  your code  */