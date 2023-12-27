CREATE TABLE SanPham (
	ProductID INT ,
	Brand varchar(10),
	Address nvarchar(50),
	Telephone int
)
SELECT * FROM SanPham
INSERT INTO SanPham VALUES (1,'Asus','usa',19001900);
INSERT INTO SanPham VALUES (2,'Dell','usa',19001888);
INSERT INTO SanPham VALUES (3,'Acer','taiwon',19001980);

SELECT * FROM SanPham

cREATE TABLE  SanPham2(
	STT int,
	Name NVARCHAR (40),
	Description NVARCHAR (40),
	Unit NVARCHAR (10),
	Price INT,
	Have int,
)
SELECT * FROM SanPham2
INSERT INTO SanPham2 VALUES (1,'Laptop Asus i7','old','chiếc',1000,10);
INSERT INTO SanPham2 VALUES (1,'Laptop Dell i9','hot','chiếc',900,20);
INSERT INTO SanPham2 VALUES (1,'Laptop Acer i7','old','chiếc',800,30);
SELECT * FROM SanPham2
SELECT * FROM SanPham1

SELECT DISTINCT BRAND FROM SanPham
SELECT DISTINCT Name FROM SanPham2

