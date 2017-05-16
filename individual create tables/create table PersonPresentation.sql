create table PersonPresentation
(
	ID int identity
		constraint PK_EventPerson
			primary key,
	presentationID int
		constraint PersonPresentation_Presentation_ID_fk
			references Presentation,
	personID int
		constraint PersonEvent_Person_ID_fk
			references Person
)
go

