create database Bank1
create table Tbl_CustomerDetailsTemp (
    CustomerId int NOT NULL,
    SurName varchar(200) NOT NULL,
    FirstName varchar(200),
	PhoneNumber varchar(50),
	EmailAddres varchar(200),
	AvailableBalance decimal (18,0)  
)
create schema Customer

ALTER schema Customer transfer dbo.Tbl_CustomerDetailsTemp

insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (1,'Mayowa','Oshoba','09051234059','oshobaba@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (2,'Onafoye','Ola','09041234059','ola@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (3,'Sam','Osoba','09051234129','osamo@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (4,'Ayo','Oshoba','09152234059','ayobaba@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (5,'felix','Stanley','08051234059','stana@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (6,'Major','General','08123234059','deegee@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (7,'Odogwu','Kingsley','09032904059','odaba@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (8,'Blessing','samuel','08813245387','blessesed@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (9,'Mayowa','Dada','07051234059','dadababa@gmail.com', 0)
insert into Customer.Tbl_CustomerDetailsTemp (CustomerId,SurName,FirstName,PhoneNumber,EmailAddres,AvailableBalance)
values (10,'kosofe','Olaoba','09052124059','kosofege@gmail.com', 0)

update Customer.Tbl_CustomerDetailsTemp set AvailableBalance = 1000  where CustomerId in (1,2)

select Top 5 * from Customer.Tbl_CustomerDetailsTemp where AvailableBalance = 1000