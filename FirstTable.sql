CREATE TABLE BUYER (
	BuyerName			Char(35)			NOT NULL,
	Department			Char(30)			NOT NULL,
	Position			Char(10)			NULL,
	Supervisor			Char(35)			NULL,
	CONSTRAINT			BUYER_PK			PRIMARY KEY(BuyerName),
	CONSTRAINT			BUYER_SUPERVISOR_FK	FOREIGN KEY(Supervisor)
							REFERENCES  BUYER(BuyerName)
	);
    
    
CREATE TABLE RETAIL_ORDER (
	OrderNumber       	Integer 	      	NOT NULL,
	StoreNumber       	Integer 	      	NULL,
	StoreZip          	Char (9)        	NULL,
	OrderMonth    	  	Char (12) 	    	NOT NULL,
	OrderYear     	  	Integer 	      	NOT NULL,
	OrderTotal   	    Numeric(9,2)    	NULL,
	CONSTRAINT 		    RETAIL_ORDER_PK 	PRIMARY KEY (OrderNumber)
	);