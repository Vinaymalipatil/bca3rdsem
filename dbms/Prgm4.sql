-- 1. Create the database 
CREATE DATABASE CityDB; 
 
-- 2. Select the database 
USE CityDB; 
 
-- 3. Create the Cities table 
CREATE TABLE Cities ( 
    ID INT, 
    name VARCHAR(20), 
    city VARCHAR(10), 
    contact BIGINT
); 
 
-- 4. Insert five tuples into the Cities table 
INSERT INTO Cities VALUES 
(1, 'Ramesh', 'Bangalore', 9876543210), 
(2, 'Priya', 'Mysore', 9876543211), 
(3, 'Suresh', 'Tumkur', 9876543212), 
(4, 'Anu', 'Hassan', 9876543213), 
(5, 'Kiran', 'Mandya', 9876543214); 
 
-- 5. Display all records 
SELECT * FROM Cities; 
 
-- 6. Update an attribute and display the table 
START TRANSACTION; 
 
UPDATE Cities 
SET city = 'Bengaluru' 
WHERE ID = 1; 
 
SELECT * FROM Cities; 
 
-- 7. Execute COMMIT command 
COMMIT; 
 
SELECT * FROM Cities; 
 
-- 8. Update an attribute for ROLLBACK demonstration 
START TRANSACTION; 
 
UPDATE Cities 
SET contact = 9000000000 
WHERE ID = 2; 
 
SELECT * FROM Cities; 
 
-- 9. Update an attribute and display the table 
START TRANSACTION; 
 
UPDATE Cities 
SET city = 'Chennai' 
WHERE ID = 3; 
 
SELECT * FROM Cities; 
 
-- 10. Create the first SAVEPOINT 
SAVEPOINT sp1; 
 
-- 11. Update an attribute after the first SAVEPOINT 
UPDATE Cities 
SET city = 'Delhi' 
WHERE ID = 4; 
 
SELECT * FROM Cities; 
 
-- 12. Create the second SAVEPOINT 
SAVEPOINT sp2; 
 
-- 13. Update an attribute after the second SAVEPOINT 
UPDATE Cities 
SET city = 'Mumbai' 
WHERE ID = 5; 
 
SELECT * FROM Cities; 
 
-- 14. Rollback to the first SAVEPOINT 
ROLLBACK TO SAVEPOINT sp1; 
 
SELECT * FROM Cities; 
 
-- 15. Commit the remaining changes 
COMMIT; 
 
-- 16. Start a transaction for SAVEPOINT demonstration 
START TRANSACTION; 
 
-- 17. Update an attribute 
UPDATE Cities 
SET city = 'Chennai' 
WHERE ID = 3; 
 
-- 18. Create the first SAVEPOINT 
SAVEPOINT sp1; 
-- 19. Update an attribute 
UPDATE Cities 
SET city = 'Delhi' 
WHERE ID = 4; 
 
-- 20. Create the second SAVEPOINT 
SAVEPOINT sp2; 
 
-- 21. Update an attribute 
UPDATE Cities 
SET city = 'Mumbai' 
WHERE ID = 5; 
 
-- 22. Rollback to the first SAVEPOINT 
ROLLBACK TO SAVEPOINT sp1; 
 
-- 23. Display the table 
SELECT * FROM Cities; 
 
-- 24. Create a MySQL user 
CREATE USER IF NOT EXISTS 'cityuser1'@'localhost' 
IDENTIFIED BY 'City@1234'; 
 
-- 25. Execute the GRANT command 
GRANT SELECT, INSERT 
ON CityDB.Cities 
TO 'cityuser1'@'localhost';
-- 26. Display granted privileges 
SHOW GRANTS FOR 'cityuser1'@'localhost'; 
 
-- 27. Execute the REVOKE command 
REVOKE INSERT 
ON CityDB.Cities 
FROM 'cityuser1'@'localhost'; 
 
-- 28. Display remaining privileges 
SHOW GRANTS FOR 'cityuser1'@'localhost';
