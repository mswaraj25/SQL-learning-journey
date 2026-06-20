USE RetailDB;
CREATE TABLE Customers(CustomerID INT,CustomerName VARCHAR(50),City VARCHAR(50));
insert into customers values(4,'ram','tanuku'),(5,'madhu','pydiparru'),(6,'lokesh','alampuram');
select * from customers; #shows all columns.
select customername from customers; #shows desired column from table
select * from customers where city = 'tanuku';# shows rows of desired condition
select customername from customers where city = 'alampuram'; #shows data of particular column of desired condition
CREATE TABLE Products(ProductID INT,ProductName VARCHAR(50),Price INT);#inserting table into database
drop table products; #delete a table
Insert into Products values(1,'Soap',10),(2,'brush',5),(3,'paste',20); # shows inserting rows into table
select * from products; #shows all products data from products table
select productname from products where price > 6; #shows column data of desired condition from table
