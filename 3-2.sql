 use covid19mon;

-- 2) ��ѯÿ������ؼ��õ����ڽ��и������������numberΪ���������ı���.
--    ��ѯ��������������ɶൽ������������ͬʱ��������ص�������
--    ����һ��SQL���ʵ�ָò�ѯ��
select location_name, count(*) number
from isolation_location, isolation_record
where isolation_record.isol_loc_id = isolation_location.id and state = 1
group by location_name					
-- дlocation.id�ᱨ��
order by number desc, location_name;

/*  end  of  your code  */