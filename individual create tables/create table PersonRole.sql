create table PersonRole
(
	ID int identity
		constraint PK_PersonRole
			primary key,
	personID int
		constraint PersonRole_Person_ID_fk
			references Person,
	roleID int
		constraint PersonRole_Role_ID_fk
			references Role
)
go

