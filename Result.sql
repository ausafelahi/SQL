CREATE DATABASE result;
USE result;

CREATE TABLE student (
	std_id INT PRIMARY KEY,
    name VARCHAR(100),
    mid_marks INT NOT NULL,
    sessional_marks INT NOT NULL,
    final_marks INT NOT NULL,
    total_marks INT NOT NULL,
    grade VARCHAR(2)
);

INSERT INTO student 
(std_id, name, mid_marks, sessional_marks, final_marks, total_marks, grade) 
VALUES 
(12518, "AUSAF", 23, 35, 30, 88, "A"), 
(12738, "CHARAN", 20, 30, 31, 81, "B+"), 
(12858, "HUZAIFA", 20, 30, 30, 80, "B"), 
(12978, "SHEHZAD", 12, 30, 25, 67, "C+");

SELECT name, grade FROM student;
SELECT * FROM student;

CREATE DATABASE abc_company;
USE abc_company;

CREATE TABLE emp (
	emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT NOT NULL
);

INSERT INTO 
emp(emp_id, name, salary) 
VALUES (1, "Adam", 25000),
(2, "Bob", 30000),
(3, "Casey", 40000);

SELECT name, salary FROM emp;
SELECT * FROM emp;