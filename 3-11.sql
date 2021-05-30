-- 11) 建立反映所有隔离点现状的视图isolation_location_status。
-- 内容包括：地点编号，隔离地点名，房间容量，已占用量
-- 请保持原列名不变，已占用量由统计函籹计算得出，该列命名为occupied。 
-- 正在隔离的人占用着隔离点的位置，隔离结束或已转院的人不占用位置。

use covid19mon;
go
drop view if exists isolation_location_status;
go

create view isolation_location_status
as
select id, location_name, capacity, 
	(select count(*) 
	from isolation_record
	where isol_loc_id = isolation_location.id and state = 1) occupied
from isolation_location;
/*  end  of  your code  */ 