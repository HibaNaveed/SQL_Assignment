CREATE DATABASE Studentmanagementsystem;
USE Studentmanagementsystem;
CREATE TABLE Student(
Student_id int primary key identity(1,1),
Student_name varchar(200),
Courses varchar(200)
);

INSERT INTO Student values ('Hiba','Accounting'),('Tehreem','Economics'),('Mahnoor','Business Communication'),
('Arisha','Accounting'),('Hamna','Statistics'),('Hafsa','Economics');

SELECT * FROM Student;

CREATE TABLE Courses(
Course_Id int primary key identity(1001,1),
Course_name varchar(200),
Credit_hours varchar(200),
);
INSERT INTO Courses values ('Accounting','3'),('Economics','3'),('Business Communication','2'),('Statistics','4');

CREATE TABLE Grades(
--grade_id int primary key identity(1,1),
Student_ID int foreign key references Student(Student_id),
Course_ID int foreign key references Courses(Course_Id),
Grade varchar(200)

);
INSERT INTO Grades values ('2','1002','A'),('3','1003','C'),('4','1001','B'),('5','1004','F'),('1','1002','A'),('6','1003','B');

SELECT * FROM Student;
SELECT * FROM Courses;
SELECT * FROM Grades;



SELECT Student.Student_name, Courses.Course_name, Grades.Grade FROM Student INNER JOIN Grades ON Student.Student_id = Grades.Student_id
INNER JOIN Courses ON Grades.Course_Id = Courses.Course_Id

SELECT Student.Student_name, Courses.Course_name, Grades.Grade FROM Student LEFT JOIN Grades ON Student.Student_id = Grades.Student_id
LEFT JOIN Courses ON Grades.Course_Id = Courses.Course_Id

SELECT Courses.Course_name, Student.Student_name, Grades.Grade FROM Courses RIGHT JOIN Grades ON Courses.Course_id = Grades.Course_ID
RIGHT JOIN Student ON Grades.Student_ID = Student.Student_id

SELECT Courses.Course_name, Student.Student_name, Grades.Grade FROM Courses FULL JOIN Grades ON Courses.Course_id = Grades.Course_ID
FULL JOIN Student ON Grades.Student_ID = Student.Student_id

