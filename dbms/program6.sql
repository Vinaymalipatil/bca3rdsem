mysql> CREATE TABLE department(
    -> dept_id INT PRIMARY KEY,
    -> department VARCHAR(30),
    -> location VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.37 sec)

mysql> INSERT INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCom','Block B'),
    -> (3,'BBA','Block C');
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT student.name,
    -> student.department,
    -> department.location
    -> FROM student
    -> INNER JOIN department
    -> ON student.department=department.department;
+-------+------------+----------+
| name  | department | location |
+-------+------------+----------+
| Akash | BCA        | Block A  |
| Ravi  | BCA        | Block A  |
| Priya | BCom       | Block B  |
| Manoj | BCA        | Block A  |
| Anu   | BCom       | Block B  |
| Kiran | BCA        | Block A  |
+-------+------------+----------+
6 rows in set (0.01 sec)

mysql> SELECT student.name,
    -> department.location
    -> FROM student
    -> LEFT JOIN department
    -> ON student.department=department.department;
+-------+----------+
| name  | location |
+-------+----------+
| Akash | Block A  |
| Ravi  | Block A  |
| Priya | Block B  |
| Manoj | Block A  |
| Anu   | Block B  |
| Kiran | Block A  |
+-------+----------+
6 rows in set (0.01 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> RIGHT JOIN department
    -> ON student.department=department.department;
+-------+------------+
| name  | department |
+-------+------------+
| Kiran | BCA        |
| Manoj | BCA        |
| Ravi  | BCA        |
| Akash | BCA        |
| Anu   | BCom       |
| Priya | BCom       |
| NULL  | BBA        |
+-------+------------+
7 rows in set (0.00 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> CROSS JOIN department;
+-------+------------+
| name  | department |
+-------+------------+
| Akash | BBA        |
| Akash | BCom       |
| Akash | BCA        |
| Ravi  | BBA        |
| Ravi  | BCom       |
| Ravi  | BCA        |
| Priya | BBA        |
| Priya | BCom       |
| Priya | BCA        |
| Manoj | BBA        |
| Manoj | BCom       |
| Manoj | BCA        |
| Anu   | BBA        |
| Anu   | BCom       |
| Anu   | BCA        |
| Kiran | BBA        |
| Kiran | BCom       |
| Kiran | BCA        |
+-------+------------+
18 rows in set (0.00 sec)

mysql> SELECT A.name AS Student1,
    -> B.name AS Student2,
    -> A.department
    -> FROM student A
    -> JOIN student B
    -> ON A.department=B.department
    -> WHERE A.id<B.id;
+----------+----------+------------+
| Student1 | Student2 | department |
+----------+----------+------------+
| Akash    | Ravi     | BCA        |
| Akash    | Manoj    | BCA        |
| Akash    | Kiran    | BCA        |
| Ravi     | Manoj    | BCA        |
| Ravi     | Kiran    | BCA        |
| Priya    | Anu      | BCom       |
| Manoj    | Kiran    | BCA        |
+----------+----------+------------+
7 rows in set (0.00 sec)
