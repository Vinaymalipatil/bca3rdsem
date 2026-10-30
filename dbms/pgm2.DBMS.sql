CREATE DATABASE College3;
USE College3;
CREATE TABLE Student3(
RollNo INT,
Name VARCHAR(50),
Age INT,
Course VARCHAR(30)
);
SELECT * FROM Student3;
INSERT INTO Student3 VALUES
(1,'Ravi',20,'BCA'),
(2,'Anu',21,'BCA'),
(3,'Priya',20,'MCA');
SELECT * FROM Student3;
ALTER TABLE Student3
ADD Email VARCHAR(100);
ALTER TABLE Student3
MODIFY Age INT NOT NULL;
SELECT * FROM Student3;
RENAME TABLE Student3 TO StudentDetails;
SELECT * FROM StudentDetails;
TRUNCATE TABLE StudentDetails;
SELECT * FROM StudentDetails;
