-- 8) ��һ����exists�ؼ��ֵ�SQL����ѯǰ30λ�г��м�¼����Ա�����͵绰����ѯ���������Ա�������
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
select top 30 fullname, telephone
from person
where exists(
	select *
	from itinerary
	where itinerary.p_id = person.id)
order by id;
/*  end  of  your code  */