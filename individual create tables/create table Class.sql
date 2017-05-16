create table Class
(
	ID int identity
		primary key,
	title varchar(70) default 'Unnamed Class',
	description varchar(250),
	duration smallint default 60 not null,
	presentationID int
		constraint Class_Presentation_ID_fk
			references Presentation
)
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'“Class” is a content that pres', N'SCHEMA', @sn, N'TABLE', N'Class'
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Official name of class.', N'SCHEMA', @sn, N'TABLE', N'Class', N'COLUMN', N'title'
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Class description up to 250 ch', N'SCHEMA', @sn, N'TABLE', N'Class', N'COLUMN', N'description'
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Duration in minutes. Check in', N'SCHEMA', @sn, N'TABLE', N'Class', N'COLUMN', N'duration'
go

