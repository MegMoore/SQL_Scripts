use master;
GO

drop DATABASE if EXISTS mm;
GO

CREATE DATABASE mm;
GO

USE mm;
GO

CREATE TABLE table1 (
    id int not null PRIMARY KEY IDENTITY(1,1),
    NAME VARCHAR(10)
);
GO
 INSERT table1 (Name) VALUES('test');

 