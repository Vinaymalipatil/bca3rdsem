CREATE DATABASE PRO;
USE PRO;
CREATE TABLE Professor(
Profid INT,
ProfName VARCHAR(25),
Department VARCHAR(25),
Phno BIGINT
);
DESC Professor;
 INSERT INTO Professor VALUES
(501,'Amarnath','Zoology',9876543210);
INSERT INTO Professor VALUES
(502,'Srinivas','Botany',9876543211);
INSERT INTO Professor VALUES
(503,'Ram','Chemistry',9876543212);
INSERT INTO Professor VALUES
(504,'John','Psychology',9876543213);
INSERT INTO Professor VALUES
(505,'Rehman','Botany',9876543214);
SELECT*FROM Professor;
SELECT Profname,Department FROM Professor;
SELECT*FROM Professor
WHERE Profid=502;
USE PRO
UPDATE Professor SET Profid =509 WHERE Profid = 505;
SELECT*FROM Professor;
DELETE FROM Professor
WHERE Profid=509;
SELECT*FROM Professor;