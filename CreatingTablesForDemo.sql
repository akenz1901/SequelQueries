Use demo;
Create Table Human(
HumanId			integer		NOT NULL,
Name			char(35)	NOT NULL,
Color			char(30)	NOT NULL,
Sex				Char(10)	NULL,
BloodGroup		Char(35)	NULL,
CONSTRAINT		Human_PK	PRIMARY KEY(HumanId)
);

Create Table Games(
OrderNumber		Integer		NOT NULL,
StoreNumber		Integer		NULL,
StoreZip		Char(9)		NULL,
OrderMonth		Char(12)	NOT NULL,
OrderYear		Integer		NOT NULL,
OrderTotal		Numeric(4,2) NOT NULL,
HumanId			Integer		NOT NULL,
CONSTRAINT		Games_PK	PRIMARY KEY(OrderNumber),
CONSTRAINT		Games_PK	FOREIGN KEY(HumanId) REFERENCES Human(HumanId)
);

Create Table CsvForNative(
NativeId		integer		NOT NULL,
FirstName		Char(30)	NOT NULL,
LastName		Char(40)	NOT NULL,
EmailAddress	Char(50)	NULL,
PhoneNumber		Char(40)	NULL,
constraint		CsvForNative_PK		PRIMARY KEY(NativeId)
);
