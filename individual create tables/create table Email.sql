create table Email
(
	ID int identity
		constraint Email_ID_pk
			primary key,
	email varchar(255)
)
go

