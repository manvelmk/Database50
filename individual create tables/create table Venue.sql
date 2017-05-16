create table Venue
(
	ID int identity
		primary key,
	name varchar(120),
	addressID int
		constraint Venue_Address_ID_fk
			references Address
)
go

