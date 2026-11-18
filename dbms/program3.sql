mysql> USE college;
Database changed
mysql> INSERT INTO student VALUES(7,'Suresh','BCA',88,'Koppal');
Query OK, 1 row affected (0.23 sec)

mysql> INSERT INTO student VALUES
    -> (8,'Pooja','BCA',78,'Koppal'),
    -> (9,'Ramesh','BCom',82,'Gangavathi'),
    -> (10,'Geeta','BCA',91,'Yelburga');
Query OK, 3 rows affected (0.09 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> UPDATE student
    -> SET marks=95
    -> WHERE id=7;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM student
    -> WHERE id=10;
Query OK, 1 row affected (0.04 sec)

mysql> SELECT*FROM student;
+----+--------+------------+-------+------------+
| id | name   | department | marks | city       |
+----+--------+------------+-------+------------+
|  1 | Akash  | BCA        |    85 | Koppal     |
|  2 | Ravi   | BCA        |    75 | Gangavathi |
|  3 | Priya  | BCom       |    90 | Koppal     |
|  4 | Manoj  | BCA        |    60 | Yelburga   |
|  5 | Anu    | BCom       |    80 | Koppal     |
|  6 | Kiran  | BCA        |    95 | Gangavathi |
|  7 | Suresh | BCA        |    95 | Koppal     |
|  8 | Pooja  | BCA        |    78 | Koppal     |
|  9 | Ramesh | BCom       |    82 | Gangavathi |
+----+--------+------------+-------+------------+
9 rows in set (0.01 sec)