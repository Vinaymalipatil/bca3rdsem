i. Create the database and select it 
 
CREATE DATABASE CollegeDB; 
USE CollegeDB; 
 -- ii. Create the Student table 
 
CREATE TABLE Student ( 
    Rno INT, 
    Sname VARCHAR(15), 
    Courseid INT 
); 
 
 
-- iii. Create the Course table 
 
CREATE TABLE Course ( 
    Courseid INT, 
    Cname VARCHAR(10) 
); 
 
 
-- iv. Insert three tuples into Student table and display it 
 
INSERT INTO Student VALUES 
(1, 'Ramesh', 101), 
(2, 'Priya', 102), 
(3, 'Suresh', 103); 
 
SELECT * FROM Student; 
 
 
-- v. Insert three tuples into Course table and display it 
SELECT Student.Rno, Student.Sname, 
       Course.Courseid, Course.Cname 
FROM Student 
LEFT OUTER JOIN Course 
ON Student.Courseid = Course.Courseid; 
 
 
-- ix. Execute RIGHT OUTER JOIN operation and display it 
 
SELECT Student.Rno, Student.Sname, 
       Course.Courseid, Course.Cname 
FROM Student 
RIGHT OUTER JOIN Course 
ON Student.Courseid = Course.Courseid; 
 
 
-- x. Execute FULL OUTER JOIN operation and display it 
-- MySQL uses UNION to combine LEFT JOIN and RIGHT JOIN 
 
SELECT Student.Rno, Student.Sname, 
       Course.Courseid, Course.Cname 
FROM Student 
LEFT JOIN Course 
ON Student.Courseid = Course.Courseid 
 
UNION 
 
SELECT Student.Rno, Student.Sname, 
       Course.Courseid, Course.Cname 
FROM Student 
RIGHT JOIN Course 
ON Student.Courseid = Course.Courseid; 
 
 
-- xi. Execute CARTESIAN PRODUCT JOIN operation and display it 
 
SELECT Student.Rno, Student.Sname, 
       Course.Courseid, Course.Cname 
FROM Student 
CROSS JOIN Course;
