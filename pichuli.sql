use covid19mon;

drop table if exists location_record_2;

--�����loc_id=2�򲻴����Ŷ�����
select *
into location_record_2
from itinerary
where itinerary.loc_id = 2;
go

select *
from location_record_2;