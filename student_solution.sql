CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

-- Department
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Department VALUES
(10,'Computer Science'),
(20,'Mathematics'),
(30,'Physics');

-- Student
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Student VALUES
(1001,'Arun',10),
(1002,'Priya',20),
(1003,'Kumar',10),
(1004,'Nisha',30);

-- Faculty
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Faculty VALUES
(1,'Ravi',10),
(2,'Meena',20),
(3,'Suresh',30);

-- Course
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

INSERT INTO Course VALUES
(201,'Database Systems'),
(202,'Data Structures'),
(203,'Mathematics'),
(204,'Physics');

-- Enrollment
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Enrollment VALUES
(1,1001,201),
(2,1001,202),
(3,1002,203),
(4,1003,201),
(5,1004,204);
