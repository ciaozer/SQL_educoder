-- 13) ɸ�鷢�֣������Ϊ��֢״��Ⱦ�ߡ������ѯ��Ӵ������������͵绰���Ա�֪ͨ�����Ÿ��롣��ѯ���ⰴ��������
--    ���г̱��У���ͬһ�ص㶺��ʱ���������н����ģ�����Ϊ�Ӵ��ߡ�
--    ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select fullname, telephone
from person p1
where p1.fullname != '�����' and exists(
	select *
	from itinerary i1
	where i1.p_id = p1.id and exists(
		select *
		from itinerary i2, person p2
		where i2.p_id = p2.id and p2.fullname = '�����' and i1.loc_id = i2.loc_id and i1.s_time <= i2.e_time and i1.e_time >= i2.s_time
	)
)
order by fullname;
/*  end  of  your code  */ 