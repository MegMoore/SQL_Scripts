--create DATABASE C41Bootcamp;

/*CREATE TABLE Students (
    Id INT PRIMARY KEY identity(1, 1),
    FirstName VARCHAR(30) not null,
    LastName VARCHAR(30) not null,
    Phone VARCHAR(12) NULL,
    Address varchar(30) NULL,
    City VARCHAR(30) null,
    STATE VARCHAR(2) not NULL DEFAULT 'OH',
    Zipcode VARCHAR(5) null
);

INSERT students (FirstName, LastName, Phone, Address, City, State, Zipcode)
    VALUES ('Megan', 'Moore', '419-961-4274', '7128 Fallsburgs Rd NE', 'Newark', default, '43055')

--forgot a table, needs to alter

ALTER TABLE students
    add active BIT not NULL DEFAULT 1

CREATE TABLE Technologies (
    Id int PRIMARY KEY IDENTITY(1, 1),
    Name varchar(30) not null,
    InstructionDays INT not null DEFAULT 5,

)    


CREATE TABLE Curricculum (
    Id int PRIMARY KEY IDENTITY(1, 1),
    Day int not NULL,
    Topic VARCHAR(50) not NULL,
    TechnologiesId int not null FOREIGN key REFERENCES Technologies(id)
);

INSERT students (FirstName, LastName, Phone, Address, City, State, Zipcode)
    VALUES ('Leana', 'Thompson', '419-961-4274', '6643 State Route 314', 'Bellville', default, '43055')

INSERT Curricculum (day, topic, technologiesid)
    VALUES ( 1, 'GitHub', 3)
*/


--SELECT * FROM Curricculum;