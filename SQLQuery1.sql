CREATE DATABASE Base_3
ON PRIMARY
(
	NAME = file1,
	FILENAME = 'C:\SQLData\file1.mdf',
	SIZE = 10MB,
	MAXSIZE = 15MB,
	FILEGROWTH = 2MB
),
(
	NAME = file2,
	FILENAME = 'C:\SQLData\file2.mdf',
	SIZE = 10MB,
	MAXSIZE = 15MB,
	FILEGROWTH = 2MB
),
FILEGROUP Group_1
(
	NAME = grfile1,
	FILENAME = 'C:\SQLData\grfile1.ndf',
	SIZE = 15MB,
	MAXSIZE = 30MB,
	FILEGROWTH = 5MB
),
(
	NAME = grfile2,
	FILENAME = 'C:\SQLData\grfile2.ndf',
	SIZE = 15MB,
	MAXSIZE = 30MB,
	FILEGROWTH = 5MB
)
LOG ON
(
	NAME = logf1,
	FILENAME = 'C:\SQLData\logf1.ldf',
	SIZE = 30MB,
	MAXSIZE = 40MB,
	FILEGROWTH = 5MB
),
(
	NAME = logf2,
	FILENAME = 'C:\SQLData\logf2.ldf',
	SIZE = 30MB,
	MAXSIZE = 40MB,
	FILEGROWTH = 5MB
);

-------------------------------------

-- USE Base_3

CREATE TABLE UserData_1
(
	id INT PRIMARY KEY IDENTITY(1,1),
	username NVARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	passwordz CHAR(60) NOT NULL
);

CREATE LOGIN Login_1 WITH PASSWORD = '12345';
CREATE USER lowkeyloser FOR LOGIN Login_1;
CREATE ROLE creator;
DENY UPDATE, INSERT ON UserData_1 TO lowkeyloser

CREATE TABLE Table123
(
	id INT PRIMARY KEY IDENTITY(1,1),
	dataID INT FOREIGN KEY REFERENCES UserData_1(id),
	col1 INT,
	col2 NVARCHAR(25)
);



