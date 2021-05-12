Use MMTShop
Go

Create Table Products(
PID int primary key identity,
SKU varchar(50),
PName varchar(50),
PDescription varchar(50),
Price float
)
Go

Create Table Category(
CID int primary key identity,
CName nvarchar(50),
)
Go

Insert into Products values ('10AB11','Dining Table','Glass Dining Table with 4 chairs',350.98)
Insert into Products values ('10AB12','Sofa','Fabric Sofa 2 Seater',150.45)
Insert into Products values ('20AB11','Garden Swing','3 Seater Garden Swing',200.35)
Insert into Products values ('20AB11','Relaxers','Padded Multi Position Garden Relaxer',30)
Insert into Products values ('30AB11','Microwave','Copper Microwave',70.90)
Insert into Products values ('40AB11','Yoga Mat','Black Yoga Mat',10.25)
Insert into Products values ('50AB11','Puzzle','Toy Story Wooden Puzzle',15.95)
Go

Insert into Category values ('Home')
Insert into Category values ('Garden')
Insert into Category values ('Electronics')
Insert into Category values ('Fitness')
Insert into Category values ('Toys')
Go