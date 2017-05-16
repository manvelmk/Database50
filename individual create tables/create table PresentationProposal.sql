create table PresentationProposal
(
	ID int identity
		primary key,
	title varchar(145),
	speaker varchar(45),
	level varchar(19),
	event varchar(12),
	eventID int
		constraint PresentationProposal_Event_ID_fk
			references Event,
	speakerID int
		constraint PresentationProposal_Person_ID_fk
			references Person
)
go

