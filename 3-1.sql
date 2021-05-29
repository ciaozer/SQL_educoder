use covid19mon;

-- 1) ��ѯ�ۼ�����������30�ĵص����ƺ��ۼ����������ۻ�����������visitors���������ơ�
--    ��ѯ��������������Ӹߵ���������������ͬʱ�����ص����Ƶ��ֵ�˳�����򡣣�ע�⣺ͬһ�˶�ι�ͬһ�ص㣬ȥ�����㼸�Σ�
--    ����һ��SQL���ʵ�ָò�ѯ��
select location_name, count(*) visitors
from location, itinerary
where location.id = loc_id
group by loc_id, location_name 
having count(*) > 30
order by visitors desc, location_name;


/*  end  of  your code  */

