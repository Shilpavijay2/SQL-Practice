create database sql_demo4;
use sql_demo4;
create table employee(eid int primary key, ename varchar(50),eadress varchar(50));
insert into employee values(5, 'riti','navi panvel');
select * from employee;
update employee set ename = 'Ram' where eid = 3;


Lab 1. Create a Database & Table Using MySQL Command-Line Client. 

● Create a database with the name StudentManagementSystem.

 # Q1 Create a table with named Student with attributes: StudentID (Primary Key) ,FirstName ,LastName ,DateOfBirth, Gender ,Email ,Phone

CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

# Q2 Create a table with name Course with attributes: CourseID (Primary Key) ,CourseTitle ,Credits 
CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseTitle VARCHAR(100),
    Credits INT
);

# Q3 Create a table with named Instructor with attributes:  InstructorID (Primary Key) ,FirstName ,LastName ,Email 

USE StudentManagementSystem;

CREATE TABLE Instructor (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

# Q 4 Create a table with named Enrollment with attributes:  EnrollmentID (Primary Key) ,EnrollmentDate ,StudentID(Foreign key) , CourseID(Foreign Key) ,InstructorID(Foreign key) 

USE StudentManagementSystem;

CREATE TABLE Score (
    ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

#Q5 Create a table with named Score with attributes: ScoreID (Primary Key) , CourseID (Foreign key) ,StudentID (Foreign Key) , DateOfExam ,CreditObtained 

USE StudentManagementSystem;

CREATE TABLE Score1 (
    ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

# Q 6 Create a table with named Feedback with attributes:  FeedbackID (Primary Key)  StudentID (Foreign key) ,Date ,InstructorName ,Feedback
USE StudentManagementSystem;
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,           -- Primary Key for Feedback table
    StudentID INT,                        -- Foreign Key referencing the Student table
    Date DATE,                            -- Date when the feedback was given
    InstructorName VARCHAR(100),          -- Name of the instructor
    Feedback TEXT,                        -- The actual feedback content
    
    -- Foreign Key constraint
    CONSTRAINT FK_StudentFeedback FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);