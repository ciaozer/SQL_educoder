use covid19mon;

drop table if exists location_record_2;

--这里的loc_id=2打不打引号都可以
select *
into location_record_2
from itinerary
where itinerary.loc_id = 2;
go

select *
from location_record_2;