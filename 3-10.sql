-- 10) ��ѯ��Ա��ȥ�����еص����Ա��������ѯ�������Ա�������ֵ�˳������
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
select fullname
from person
where not exists(
	select *
	from location
	where not exists(
		select *
		from itinerary
		where itinerary.p_id = person.id and itinerary.loc_id = location.id
	)
)
order by fullname;
/*  end  of  your code  */ 