IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'Example5')
	DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO
USE Example5
GO

CREATE TABLE LopHoc(
	MaLopHoc INT PRIMARY KEY IDENTITY, 
	TenLopHoc VARCHAR(10)
)
GO
SELECT * FROM LopHoc
GO
INSERT INTO LopHoc (TenLopHoc) VALUES ('T2306M')
SELECT * FROM LopHoc
UPDATE LopHoc SET TenLopHoc = 'T2308M'
WHERE MaLopHoc = 1002
DELETE FROM LopHoc WHERE MaLopHoc = 1002
GO

DROP TABLE SinhVien
CREATE TABLE SinhVien (
MaSV int PRIMARY KEY,
TenSV nvarchar(250),
ClassCode int,
CONSTRAINT fk FOREIGN KEY (ClassCode) REFERENCES LopHoc (MaLopHoc)
)
GO
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (33, 'son', 211);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (31, 'hoang', 1604);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (23, 'dung', 2345),(43,'linh',2003);
SELECT * FROM SinhVien
SELECT * FROM LopHoc