-- 16) ��ѯ2021-02-02 10:00:00��14:00:00�ڼ䣬�г̼�¼��Ƶ����3���˵��������г̼�¼������
--     ��¼��������Ϊrecord_number. ��¼�����еģ�������˳�����С�
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select top 3 fullname, count(*) record_number
from person, itinerary
where person.id = itinerary.p_id and s_time <= '2021.02.02 14:00:00' and e_time >= '2021.02.02 10:00:00'
--group by p_id 
--Ϊʲô����
group by fullname
order by record_number desc, fullname;

/*  end  of  your code  */