create table Address
(
	ID int identity
		constraint PK_Address
			primary key,
	street nvarchar(95),
	city nvarchar(45),
	zipPostal varchar(18),
	stateProvinceCountry nvarchar(30)
)
go

