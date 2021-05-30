/*
(1)��create function��䴴����������Ҫ��ĺ�����
   ������Ա��ż����䵽�����еص�Ĵ���(���г̱��еļ�¼��)��
   ������Ϊ��Count_Records�������Ĳ����������Լ�����:*/
use covid19mon;
drop function if exists Count_Records;
go

create function Count_Records(@p_id int)
returns int
as
begin
    declare @result int 
	select @result = count(*)
	from itinerary
	where itinerary.p_id = @p_id;
    return @result; 
end
go
/*
(2) ���ô����ĺ���������һ��SQL����ѯ���г̱���������3���г̼�¼����Ա��Ϣ��
��ѯ�������Ա�������*/

select *
from person
where dbo.Count_Records(id) >= 3
order by id;
