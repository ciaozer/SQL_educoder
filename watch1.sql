use test
go

drop table if exists person;
go

create table person(
	id int,
	age int
);
go

insert into person values(1, 2);
insert into person values(1, 2);
insert into person values(1, 2);
insert into person values(2, 3);
insert into person values(2, 3);
insert into person values(2, 3);
insert into person values(2, 3);
go

delete 
from person
where id = 1;
go

update person
set age = 5
where id = 2;

select *
from person;