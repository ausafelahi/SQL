CREATE DATABASE clause;
USE clause;

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

SELECT DISTINCT name, grade FROM student;
SELECT * FROM student;

-- OPERATIONS, LIMIT, ORDER BY, AGGREGATE FUNCTIONS

SELECT * FROM student WHERE total_marks <= 88 AND grade = "B+";
SELECT * FROM student WHERE total_marks <= 88 OR grade = "B+";
SELECT * FROM student WHERE total_marks BETWEEN 80 AND 85;
SELECT * FROM student WHERE total_marks < 80 LIMIT 2;
SELECT * FROM student ORDER BY grade DESC LIMIT 1;

SELECT AVG(total_marks) FROM student;