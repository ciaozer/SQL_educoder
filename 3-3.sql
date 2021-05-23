 use covid19mon;

-- 2) ��ѯ�г̱�����Ա��Ŵ���30��ͬһ���˵Ľ����г���Ϣ��������ݰ�����
-- ��Ա���,����,�غ�ʱ��,��ʼ�ص�id,��ʼ�ص�,�����ص�id,�����ص㡣
-- ��ѯ�������Ա���������ͬһ��Ա�ж�������г̣��ٰ��غ�ʱ������
-- ����һ��SQL���ʵ�ָò�ѯ��
select i1.p_id id, fullname, telephone, i1.e_time reclosing_time, l1.id loc1, l1.location_name address1, l2.id loc2, l2.location_name address2
from person, itinerary i1, itinerary i2, location l1, location l2
where i1.e_time = i2.s_time and i1.p_id > 30 and i1.p_id = i2.p_id and i1.loc_id = l1.id and i2.loc_id = l2.id and i1.p_id = person.id
order by id, reclosing_time;
/*  end  of  your code  */