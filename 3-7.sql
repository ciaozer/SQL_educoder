-- 7) ��ѯ����ʹ�õĸ������,��ѯ����������ı������
--    ����һ��SQL���ʵ�ָò�ѯ��


use covid19mon;
select location_name
from isolation_location
where exists(
	select *
	from isolation_record
	where isolation_location.id = isolation_record.isol_loc_id and state = 1);

/*  end  of  your code  */