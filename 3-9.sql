-- 9) дһ����NOT EXISTS �Ӳ�ѯ��SQL���ʵ��������ѯҪ��
--   ��ѯ��Ա����û��ȥ���ص㡰Today�����ꡱ�����������ͳ�Ƴ�����������Ϊnumber��
--   ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
select count(*) number
from person 
where not exists(
	select *
	from itinerary, location
	where itinerary.p_id = person.id and itinerary.loc_id = location.id and location_name = 'Today������'
)


/*  end  of  your code  */