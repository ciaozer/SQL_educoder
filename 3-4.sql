-- 4) ��ѯ�������ͼֺ�ɽ���г��������ѯ����������������绰������ʲô�ط�������������ʱ�����ʱ�뿪 ��
--  ����ԭ���г��������ñ�������ѯ�������Ա��Ž�������ͬһ��Ա�г����г̿�ʼʱ��˳������.

--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
select fullname, telephone, location_name, 
	(select convert(char(19), s_time, 20)) s_time,
	(select convert(char(19), e_time, 20)) e_time
from person left join itinerary on person.id =  itinerary.p_id left join location on itinerary.loc_id = location.id
where (person.fullname = N'������' or person.fullname = N'�ֺ�ɽ') 
order by person.id desc, s_time;

/*  end  of  your code  */