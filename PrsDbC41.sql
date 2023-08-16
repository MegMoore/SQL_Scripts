use master;
go
drop database if exists PrsDbC41;
go
create database PrsDbC41;
go
use PrsDbC41;
go
create table Users (
    Id int not null primary key identity(1,1),
    Username varchar(30) not null unique,
    Password varchar(30) not null,
    Firstname varchar(30) not null,
    Lastname varchar(30) not null,
    Phone varchar(12) null,
    Email varchar(255) null,
    IsReviewer bit not null default 0,
    IsAdmin bit not null default 0
)
GO
insert Users (Username, Password, Firstname, Lastname, IsReviewer, IsAdmin) VALUES
    ('sa', 'sa', 'System', 'Admin', 1, 1),
    ('rv', 'rv', 'System', 'Reviewer', 1, 0),
    ('us', 'us', 'System', 'User', 0, 0);
GO
create table Vendors (
    Id int not null primary key identity(1,1),
    Code varchar(30) not null unique,
    Name varchar(30) not null,
    Address varchar(30) not null,
    City varchar(30) not null,
    State varchar(2) not null,
    Zip varchar(5) not null,
    Phone varchar(12) null,
    Email varchar(255) null,
)
GO
insert Vendors (Code, Name, Address, City, State, Zip) VALUES
    ('AMAZ', 'Amazon', '410 Terry Ave N', 'Seattle', 'WA', '98109'),
    ('TARG', 'Target', '1000 Nicollet Mall TPS-3165', 'Minneapolis', 'MN', '55403'),
    ('MEIJ', 'Meijer', '2929 Walker Ave NW', 'Walker', 'Mi', '49544')
GO
create table Products (
    Id int not null primary key identity(1,1),
    PartNbr varchar(30) not null unique,
    Name varchar(30) not null,
    Price decimal(11,2) not null default 10,
    Unit varchar(30) not null default 'Each',
    PhotoPath varchar(255) null,
    VendorId int not null REFERENCES Vendors(Id)
)
GO
insert Products (PartNbr, Name, Price, VendorId) VALUES
    ('ECHO', 'Amazon Echo', 100, 1),
    ('ECHODOT', 'Amazon Echo Dot', 50, 1),
    ('ECHOSHOW', 'Amazon Echo Show', 200, 1),
    ('XPENSET', 'Cross Pen & Pencil Set', 75, 1),
    ('PEN', 'BIC PEN', 1, 1),
    ('REAM', 'Ream Paper', 5, 1)
GO
create table Requests (
    Id int not null primary key identity(1,1),
    Description varchar(80) not null,
    Justification varchar(80) not null,
    RejectionReason varchar(80) null,
    DeliveryMode varchar(20) not null default 'Pickup',
    Status varchar(10) not null default 'NEW' 
        --check (Status in ('NEW', 'EDIT', 'REVIEW', 'APPROVED', 'REJECTED')),
    Total decimal(11,2) not null default 0,
    UserId int not null REFERENCES Users(Id)
)
GO
create table Requestlines (
    Id int not null primary key identity(1,1),
    Quantity int not null check (Quantity > 0),
    RequestId int not null REFERENCES Requests(Id) on Delete Cascade,
    ProductId int not null REFERENCES Products(Id),
)
GO
insert Requests ([Description], Justification, UserId) VALUES
    ('Request 1', 'None', 3),
    ('Request 2', 'None', 3),
    ('Request 3', 'None', 3);
Go
insert Requestlines (Quantity, RequestId, ProductId) VALUES
    (1, 1, 1),
    (1, 2, 2),
    (2, 2, 3),
    (1, 3, 4),
    (2, 3, 5),
    (3, 3, 6);
Go