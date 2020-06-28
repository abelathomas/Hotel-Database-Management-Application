
CREATE TABLE Hotel ( 
	hotelID INTEGER,
	hotelAddress VARCHAR(255),
	PRIMARY KEY (hotelID)
);

CREATE TABLE Employee ( 
	employeeID INTEGER,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	dob DATE,
	salary INTEGER,
	PRIMARY KEY (employeeID)
);

CREATE TABLE Manager ( 
	managerID INTEGER,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	dob DATE,
	salary INTEGER,
	PRIMARY KEY (managerID)
);

CREATE TABLE HotelManger ( 
	hotelID INTEGER,
	managerID INTEGER,
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
	FOREIGN KEY (managerID) REFERENCES Manager(managerID) ON DELETE CASCADE
);

CREATE TABLE HotelEmployee ( 
	hotelID INTEGER,
	employeeID INTEGER,
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
	FOREIGN KEY (employeeID) REFERENCES Employee(employeeID) ON DELETE CASCADE
);

CREATE TABLE Customer ( 
	customerID INTEGER,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	phoneNumber INTEGER,
	PRIMARY KEY (customerID)
);

CREATE TABLE Room ( 
	roomNumber INTEGER,
	hotelID INTEGER,
	occupied VARCHAR(3), 
	roomType VARCHAR(20),
	PRIMARY KEY (roomNumber)
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
	FOREIGN KEY (roomType) REFERENCES TypePrice(roomType) ON DELETE CASCADE
	CHECK (occupied = 'Yes' or occupied = 'No')
);

CREATE TABLE Transactions (
	transNumber INTEGER,
	transDate DATE, 
	amount INTEGER,
	customerID INTEGER,
	PRIMARY KEY (transNumber)
	FOREIGN KEY (customerID) REFERENCES Customer(customerID) ON DELETE CASCADE
	CHECK (amount>=0)
);	

CREATE TABLE TypePrice ( 
	roomType VARCHAR(20),
	price INTEGER,
	roomNumber INTEGER,
	hotelID INTEGER,
	PRIMARY KEY (roomType,hotelID,roomNumber)
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
	FOREIGN KEY (roomNumber) REFERENCES Room(roomNumber) ON DELETE CASCADE
);

CREATE TABLE Book (
	customerID INTEGER,
	hotelID INTEGER,
	roomNumber INTEGER,
	FOREIGN KEY (roomNumber) REFERENCES Room(roomNumber) ON DELETE CASCADE
	FOREIGN KEY (customerID) REFERENCES Customer(customerID) ON DELETE CASCADE
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
);

CREATE TABLE Payment (
	transNumber INTEGER,
	customerID INTEGER,
	PRIMARY KEY (customerID,transNumber)
	FOREIGN KEY (transNumber) REFERENCES Transactions(transNumber) ON DELETE CASCADE
	FOREIGN KEY (customerID) REFERENCES Customer(customerID) ON DELETE CASCADE
);

CREATE TABLE Owns (
	hotelID INTEGER,
	roomNumber INTEGER,
	PRIMARY KEY (roomNumber,hotelID)
	FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID) ON DELETE CASCADE
	FOREIGN KEY (roomNumber) REFERENCES Room(roomNumber) ON DELETE CASCADE
);