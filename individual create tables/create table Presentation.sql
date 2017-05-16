create table Presentation
(
	ID int identity
		primary key,
	title varchar(145),
	level varchar(19),
	event varchar(12),
	eventID int
		constraint Presentation_Event_ID_fk
			references Event,
	roomID int
		constraint Presentation_Room_ID_fk
			references Room,
	trackID int
		constraint Presentation_Track_ID_fk
			references Track,
	speakerID int
		constraint Presentation_Person_ID_fk
			references Person
)
go

