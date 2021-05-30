-- 11) ������ӳ���и������״����ͼisolation_location_status��
-- ���ݰ������ص��ţ�����ص�����������������ռ����
-- �뱣��ԭ�������䣬��ռ������ͳ�ƺ��s����ó�����������Ϊoccupied�� 
-- ���ڸ������ռ���Ÿ�����λ�ã������������תԺ���˲�ռ��λ�á�

use covid19mon;
go
drop view if exists isolation_location_status;
go

create view isolation_location_status
as
select id, location_name, capacity, 
	(select count(*) 
	from isolation_record
	where isol_loc_id = isolation_location.id and state = 1) occupied
from isolation_location;
/*  end  of  your code  */ 