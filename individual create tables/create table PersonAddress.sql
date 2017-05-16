create table PersonAddress
(
	ID int identity
		primary key,
	personID int
		constraint PersonAddress_Person_ID_fk
			references Person,
	addressID int
		constraint PersonAddress_Address_ID_fk
			references Address
)
go

