CREATE TABLE Customer (
  Cust_ID INTEGER PRIMARY KEY,
  Cust_Fname VARCHAR(25) NOT NULL,
  Cust_Lname VARCHAR(25) NOT NULL,
  Cust_Street_Addr VARCHAR(40) NOT NULL,
  Cust_Apt VARCHAR(10),
  Cust_City VARCHAR(20) NOT NULL,
  Cust_St CHAR(2) NOT NULL,
  Cust_Zip CHAR(5) NOT NULL,
  Cust_Home_Phone CHAR(10),
  Cust_Mobile_Phone CHAR(10),
  Cust_Other_Phone CHAR(10)
);

CREATE TABLE Donut (
  Donut_ID INTEGER PRIMARY KEY,
  Donut_Name VARCHAR(25) NOT NULL,
  Donut_Desc VARCHAR(255),
  Donut_Price DECIMAL(10,4) NOT NULL
);

CREATE TABLE Order_Form (
  Order_ID INTEGER PRIMARY KEY,
  Order_Date DATE NOT NULL,
  Order_Handling_Notes VARCHAR(255),
  Cust_ID INTEGER NOT NULL,
  FOREIGN KEY FK_Cust(Cust_ID)
    REFERENCES Customer(Cust_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Order_Line_Item (
  Order_ID INTEGER NOT NULL,
  Donut_ID INTEGER NOT NULL,
  Line_Quantity INTEGER NOT NULL,
  FOREIGN KEY FK_Order(Order_ID)
    REFERENCES Order_Form(Order_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY FK_Donut(Donut_ID)
    REFERENCES Donut(Donut_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  PRIMARY KEY (Order_ID, Donut_ID)
);