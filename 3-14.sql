-- 14) �������нӴ�������ݲ�ѯÿ���ص�����нӴ��ߵ��������г����ݰ������ص����ƣ��ܽ���������
--     ������ͳ�ƻ�ã���������Ϊclose_contact_number.��ѯ������ܽ��������������С�
--  �ܽ���������ͬʱ�����ص���������
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select location_name, count(*) close_contact_number
from location, close_contact
where location.id = close_contact.loc_id
group by location_name 
order by close_contact_number desc, location_name;

/*  end  of  your code  */ 