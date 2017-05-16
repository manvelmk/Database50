create table EventSponsor
(
	ID int identity
		primary key,
	eventID int
		constraint EventSponsor_Event_ID_fk
			references Event,
	sponsorID int
		constraint EventSponsor_Sponsor_ID_fk
			references Sponsor
)
go

