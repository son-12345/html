CREATE TABLE Employee (
	EmployeeID INT primary key,
	Name  NVARCHAR(100),
	Tel CHAR(11),
	Email VARCHAR(30)
);

INSERT INTO Employee 
VALUES 
(1,'Nguyen The Son','0888317598','nguyentheson1703@gmail.com'),
(2,'Do Viet Hoang','0999317598','doviethoang1703@gmail.com'),
(3,'Le Minh Son','0777317598','leminhson1703@gmail.com'),
(4,'Nguyen Quang Anh','0666317598','nguyenquanganh1703@gmail.com');

CREATE TABLE Groups (
	GroupID  INT primary key, 
	GroupName VARCHAR(30),
	LeaderID INT,
	ProjectID INT,
	FOREIGN KEY (LeaderID) REFERENCES Employee(EmployeeID ),
);

INSERT INTO Groups
VALUES 
(123,'sonhoangson',1,567),
(124,'sonhoanganh',2,568),
(234,'hoangsonanh',3,678);

CREATE TABLE Project (
	ProjectID INT,
	ProjectName VARCHAR(30),
	StartDate DATETIME,
	EndDate DATETIME,
	Period int,
	Cost MONEY
);

INSERT INTO Project
VALUES
(567,'fss','20230101','20231111',10,100000000),
(568,'fse','20230202','20241002',20,500000000),
(678,'sse','20250310','20251010',7,400000000);

CREATE TABLE GroupDetail(
	GroupID  INT,
	EmployeeID INT ,
	Status CHAR(20),
	PRIMARY KEY (GroupID, EmployeeID),
	FOREIGN KEY (GroupID ) REFERENCES  Groups(GroupID ),
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

INSERT INTO GroupDetail
VALUES
(123,1,'complete'),
(123,2,'Good'),

SELECT * FROM Employee;
SELECT * FROM Groups;
SELECT * FROM Project;
SELECT * FROM GroupDetail;

DROP TABLE Employee;
DROP TABLE Groups;
DROP TABLE Project;
DROP TABLE GroupDetail;