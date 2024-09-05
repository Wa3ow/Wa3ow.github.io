Create Database Internship;

use Internship;

--This table to add an admin--
CREATE TABLE Admin_Info (
    Admin_ID varchar(20) not null primary key,
    Admin_FirstName varchar(50),
    Admin_LastName varchar(50),
    Admin_Email varchar(50),
    Admin_Phone varchar(12),
	Admin_Titel varchar(50),
    Admin_Office varchar(10),
	Admin_PassWord varchar(255)
);

--This table to add an internship --
CREATE TABLE Internship (
    Request_ID int identity(1,1) not null primary key ,--Auto--
	Admin_ID varchar(20) FOREIGN KEY REFERENCES Admin_Info(Admin_ID),--not reqierd--
    Company_Name varchar(50),
    Request_Status char(1),--(C for carrent)(F for full)(....)--
    Internship_Position varchar(50),
    Major_Request varchar(12),
	Internship_Start_Date Date,
    Internship_End_Date Date,
	Internship_Seat int
);

 

-- Insert data into Admin_Info table

INSERT INTO Admin_Info (Admin_ID, Admin_FirstName, Admin_LastName, Admin_Email, Admin_Phone, Admin_Titel, Admin_Office, Admin_PassWord)
VALUES
    ('A001', 'John', 'Doe', 'johndoe@example.com', '123-456-7890', 'HR Manager', 'HR Dept', 'password123'),
    ('A002', 'Jane', 'Smith', 'janesmith@example.com', '987-654-3210', 'Marketing Director', 'Marketing', 'password456');




-- Insert data into Internship table

INSERT INTO Internship (Admin_ID, Company_Name, Request_Status, Internship_Position, Major_Request, Internship_Start_Date, Internship_End_Date, Internship_Seat)
VALUES
    ('A001', 'XYZ Corp', 'C', 'Marketing Intern', 'Marketing', '2023-01-15', '2023-04-15', 5),
    ('A002', 'ABC Inc', 'F', 'Software Developer Intern', 'Comp Sci', '2023-02-01', '2023-05-31', 3),
    (NULL, 'Tech Solutions', 'P', 'Data Analyst Intern', 'Data Sci', '2023-03-10', '2023-06-30', 2);

 
 select * from Internship