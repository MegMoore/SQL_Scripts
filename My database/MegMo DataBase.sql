use master;
GO

drop DATABASE if EXISTS MegMo;
GO

CREATE DATABASE MegMo;
GO

USE MegMo;
GO

CREATE TABLE Users (
    Id INT PRIMARY KEY identity(1, 1) not null,
    UserName  VARCHAR(30) UNIQUE not null,
    Password VARCHAR(30) not null,
    FirstName VARCHAR(30) not NULL,
    LastName varchar(30) not NULL,
    Phone VARCHAR(12) null,
    Email VARCHAR(255) not NULL,
    IsReviewer BIT NOT null,
    IsAdmin BIT not NULL
);


GO

CREATE TABLE Vendors (
    Id INT PRIMARY KEY identity(1, 1) not null,
    Code VARCHAR(30) UNIQUE not null,
    Name VARCHAR(30) not null,
    Address VARCHAR(30) NOT NULL,
    City VARCHAR(30) NOT null,
    State varchar(2) NOT NULL,
    Zip VARCHAR(5) not NULL,
    Phone VARCHAR(12) null,
    Email VARCHAR(255) NULL
);

GO

CREATE TABLE Products (
    Id INT PRIMARY KEY identity(1, 1) not null,
    PartNbr VARCHAR(30) not null,
    Name VARCHAR(30) not null,
    Price decimal(11,2) NOT NULL,
    Unit VARCHAR(30) null,
    PhotoPath VARCHAR(255) NULL,
    VendorId int FOREIGN KEY REFERENCES vendors not null
);

GO

CREATE TABLE Requests (
    Id INT PRIMARY KEY identity(1, 1),
    DESCRIPTION VARCHAR(80) not null,
    Justification VARCHAR(80) not null,
    RejectionReason VARCHAR(80) NULL,
    DeliveryMode varchar(20) not NULL,
    Status VARCHAR(10) NOT null,
    Total DECIMAL(11,2) not NULL,
    UserId int FOREIGN KEY REFERENCES USERs not null
);

GO

CREATE TABLE RequestLines (
    Id INT PRIMARY KEY identity(1, 1),
    RequestedId int FOREIGN KEY REFERENCES requests(Id) on delete CASCADE not null,
    ProductId INT FOREIGN KEY REFERENCES Products(Id) not null,
    Quantity INT NOT NULL CHECK (Quantity > 0)
);