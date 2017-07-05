CREATE VIEW Cust_View AS
  SELECT 
    Cust_ID AS 'Customer ID', 
    (CONCAT(Cust_Fname,  ' ', Cust_Lname)) AS Name, 
    Cust_Street_Addr AS Address, 
    Cust_Apt AS Apartment,  
    Cust_City AS City, 
    Cust_St AS State, 
    Cust_Zip AS 'Zip Code', 
    Cust_Home_Phone AS 'Home Phone', 
    Cust_Mobile_Phone AS 'Mobile Phone', 
    Cust_Other_Phone AS 'Other Phone' 
  FROM
    Customer;