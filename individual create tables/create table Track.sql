create table Track
(
	ID int identity
		primary key,
	name varchar(95)
)
go

create unique index Track_name_uindex
	on Track (name)
go

