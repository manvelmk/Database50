create table Sponsor
(
	ID int identity
		constraint PK_Sponsor
			primary key,
	name varchar(50),
	tier varchar(20)
)
go

