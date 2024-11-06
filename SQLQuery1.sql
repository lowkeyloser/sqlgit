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