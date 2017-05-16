create table Room
(
	ID int identity
		primary key,
	roomName varchar(50),
	venueID int
		constraint Room_Venue_ID_fk
			references Venue,
	location varchar(255),
	occupancy int
)
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Name of specific room', N'SCHEMA', @sn, N'TABLE', N'Room', N'COLUMN', N'roomName'
go

declare @sn nvarchar(30)
set @sn = schema_name()
execute sp_addextendedproperty N'MS_Description', N'Relative location of the room', N'SCHEMA', @sn, N'TABLE', N'Room', N'COLUMN', N'location'
go

