create table Schedule
(
	ID int identity
		primary key,
	presentationID int
		constraint Schedule_Presentation_ID_fk
			references Presentation
)
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Since each presentation that i', N'SCHEMA', @sn, N'TABLE', N'Schedule'
go

