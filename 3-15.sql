-- 15) ��ѯ��Ⱦ����������Ա��ţ��������ͱ����Ⱦ��������
--     ��Ⱦ������ͳ�����ã�����Ϊinfected_number.
-- ˵-����
--     �������ݼ�close_contact���еı��ܽ��ߴ������ϼ�¼���޷�֪�����Ƿ񱻸�Ⱦ����
--     �������ݼ���Ӱ���������⣬����ͬѧ��ǰ��������⡣���ԣ������ݼ�Ϊ���ܽ��߾��Ǹ�Ⱦ�ߡ�
-- ����һ��SQL���ʵ�ָò�ѯ��
use covid19mon;
go
select top 1 case_p_id, fullname, count(distinct p_id) infected_number
from person, close_contact
where person.id = case_p_id
group by case_p_id, fullname
--Ϊʲô��fullname
order by infected_number desc;

/*  end  of  your code  */