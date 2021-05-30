use covid19mon;
go

drop table if exists isolation_person_sum;
go

create table isolation_person_sum(
	isol_loc_id int primary key,
	num int not null,
	foreign key(isol_loc_id) references isolation_location(id)
);
go

drop proc if exists create_proc;
go

create proc create_proc
as
begin
insert into isolation_person_sum
select isol_loc_id, count(*) as num
from isolation_record
group by isol_loc_id;
select *
from isolation_person_sum;
end;
go

drop proc if exists update_proc;
go

create proc update_proc(@isol_loc_id int, @num int)
as
begin
update isolation_person_sum
set isolation_person_sum.num = @num
where isolation_person_sum.isol_loc_id = @isol_loc_id;
select *
from isolation_person_sum;
end;
go

exec create_proc;
go

exec update_proc 1, 3;