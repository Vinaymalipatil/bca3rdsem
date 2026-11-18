 DELIMITER //
mysql> CREATE PROCEDURE get_student(IN sid INT)
    -> BEGIN
    -> DECLARE student_name VARCHAR(50);
    -> SELECT name INTO student_name
    -> FROM student
    -> WHERE id=sid;
    -> SELECT student_name AS Result;
    -> END //
Query OK, 0 rows affected (0.54 sec)

mysql> DELIMITER ;
mysql> CALL get_student(1);
+--------+
| Result |
+--------+
| Akash  |
+--------+
1 row in set (0.10 sec)

Query OK, 0 rows affected (0.11 sec)

mysql> CALL get_student(100);
+--------+
| Result |
+--------+
| NULL   |
+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)