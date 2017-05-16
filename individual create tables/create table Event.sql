create table Event
(
	ID int identity
		constraint PK__Event__3214EC275E66F9BC
			primary key,
	name nvarchar(95),
	region nvarchar(50),
	date datetime,
	venueID int
		constraint Event_Venue_ID_fk
			references Venue
)
go

