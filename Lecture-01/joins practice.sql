create database join_practice;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(30),
    city VARCHAR(20)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(30),
    fees DECIMAL(8,2)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO students VALUES
(1,'Rahul','Ahmedabad'),
(2,'Priya','Surat'),
(3,'Amit','Rajkot'),
(4,'Neha','Vadodara'),
(5,'Karan','Ahmedabad'),
(6,'Riya','Surat'),
(7,'Vivek','Rajkot'),
(8,'Sneha','Ahmedabad');

INSERT INTO courses VALUES
(101,'SQL',5000),
(102,'Python',7000),
(103,'Java',6500),
(104,'Power BI',8000),
(105,'Tableau',7500),
(106,'MongoDB',6000);

INSERT INTO enrollments VALUES
(1001,1,101),
(1002,2,102),
(1003,3,101),
(1004,3,103),
(1005,5,104),
(1006,6,101),
(1007,6,105);

select student_name,course_name from students JOIN enrollments ON students.student_id=enrollments.student_id JOIN courses ON enrollments.course_id=courses.course_id; -- Show student name and course name.
 /*
in inner join only matching values will be returned 
*/

select student_name,course_name from students LEFT join enrollments ON students.student_id=enrollments.student_id LEFT JOIN courses on enrollments.course_id=courses.course_id;	 -- Show all students and their course names, even if they are not enrolled.
/* 
IN LEFT JOIN ALL LEFT TABLE ENTITIES ARE VISIBLE IF NO MATCH THEN NULL 
\*


