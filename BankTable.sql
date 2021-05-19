Use microfinancebank;
Create Table Customer(
CustId		Char(6)		NOT NULL,
Fname		Char(35)	NULL,
Mname		Char(30)	NULL,
Lname		Char(30)	NULL,
City		Char(15)	NULL,
Mobileno	Char(10)	NULL,
Occupation	Char(10)	NULL,
DOB			date		NULL,
CONSTRAINT		Cust_PK	PRIMARY KEY(CustId)				
);
Create Table Branch(
bId		Char(6)		NOT NULL,
Bname	Char(30)	NULL,
Bcity	Char(30)	NULL,
CONSTRAINT		bId_PK	PRIMARY KEY(bId)
);
Create Table Loan(
loan_amount		Integer		NULL,
bId				Char(6)		NOT NULL,
CustId			Char(6)		NOT NULL,
CONSTRAINT		Loan_PK	PRIMARY KEY(bId, CustId),	
CONSTRAINT		bId_FK	FOREIGN KEY(bId) REFERENCES Branch(bId),
CONSTRAINT		CustId_FK	FOREIGN KEY(CustId) REFERENCES Customer(CustId)
);
Create Table Account(
AccountNo		Char(6)		NOT NULL,
opening_balance	Integer		NULL,
Aod				date		NULL,
Atype			Char(10)	NULL,
Astatus			Char(10)	NULL,
CustId			Char(6)		NULL,
bId				Char(6)		NULL,
CONSTRAINT		AccountNo_PK	PRIMARY KEY(AccountNo),	
CONSTRAINT		bId_PK	FOREIGN KEY(bId) 
						REFERENCES Branch(bId),
CONSTRAINT		Cust_PK	FOREIGN KEY(CustId)
						REFERENCES Customer(CustId)
);

Create Table Trandetails(
Tnumber					Char(6) 		NOT NULL,
Dot						date			NULL,
Medium_Of_Transaction	Char(20)		NULL,
Trasanction_Type		Char(20)		NULL,
Transaction_Amount		Integer			NULL,
AccountNo				Char(6)			NOT NULL,
CONSTRAINT		Tnumber_PK	PRIMARY KEY(Tnumber),
CONSTRAINT		AccountNo_PK	FOREIGN KEY(AccountNo) 
								REFERENCES Account(AccountNo)
);
