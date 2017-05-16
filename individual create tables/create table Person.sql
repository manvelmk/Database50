create table Person
(
	ID int identity
		constraint PK_Person
			primary key,
	firstName nvarchar(50),
	lastName nvarchar(50)
)
go

