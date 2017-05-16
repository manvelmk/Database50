create table PersonEmail
(
	ID int identity
		constraint PK_PersonEmail
			primary key,
	emailID int
		constraint PersonEmail_Email_ID_fk
			references Email,
	personID int
		constraint FK_PersonEmail_Person
			references Person
)
go

