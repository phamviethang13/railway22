DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;

USE Testing_System_Assignment_1;
SHOW DATABASES;

CREATE TABLE Department
(
DepartmentID    INT PRIMARY KEY AUTO_INCREMENT,
DepartmentName  VARCHAR(100)
);

CREATE TABLE Position
(
PositionID    INT PRIMARY KEY AUTO_INCREMENT,
PositionName  VARCHAR(100)
);

CREATE TABLE Accounts
(
AccountID    INT PRIMARY KEY AUTO_INCREMENT,
Email        VARCHAR(100),
UserName     VARCHAR(100),
Fullname     VARCHAR(100),
DepartmentID INT,
PositionID   INT,
CreateDate   VARCHAR(10)
);

CREATE TABLE Group_0
(
GroupID      INT PRIMARY KEY AUTO_INCREMENT,
GroupName    VARCHAR(100),
CreatorID    INT,
CreateDate   VARCHAR(10)
);

CREATE TABLE GroupAccount
(
GroupID      INT PRIMARY KEY AUTO_INCREMENT,
AccountID    INT,
JoinDate     VARCHAR(10)
);

CREATE TABLE TypeQuestion
(
TypeID      INT PRIMARY KEY AUTO_INCREMENT,
TypeName    VARCHAR(100)
);

CREATE TABLE CategoryQuestion
(
CategoryID      INT PRIMARY KEY AUTO_INCREMENT,
CategoryName    VARCHAR(100)
);

CREATE TABLE Question
(
QuestionID      INT PRIMARY KEY AUTO_INCREMENT,
Content         VARCHAR(100),
CategoryID      INT,
TypeID          INT,
CreatorID       INT,
CreateDate      VARCHAR(10)
);

CREATE TABLE Answer
(
AnswerID        INT PRIMARY KEY AUTO_INCREMENT,
Content         VARCHAR(100),
QuestionID      INT,
isCorrect		INT
);

CREATE TABLE Exam
(
ExemID        INT PRIMARY KEY AUTO_INCREMENT,
ExCode		  INT,
Title         VARCHAR(100),
CategoryID    INT,
Duration      INT,
CreatorID     INT,
Createdate    VARCHAR(10)
);

CREATE TABLE ExamQuestion
(
ExemID        INT PRIMARY KEY AUTO_INCREMENT,
QuestionID	  INT
);
SELECT * FROM accounts;