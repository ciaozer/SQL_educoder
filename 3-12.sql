-- 12) ����ͼisolation_location_status�в�ѯ��������ʣ��շ������Ŀ��
--    ��Ҫ�г����������������ƣ�ʣ�෿����������ʣ�෿����Ϊ����ó��������������Ϊavailable_rooms
--    ��ѯ����������������
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select location_name, (capacity-occupied) available_rooms
from isolation_location_status;

/*  end  of  your code  */ 