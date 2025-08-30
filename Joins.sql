CREATE DATABASE joins;
USE joins;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO student (id, name)
VALUES
(101, "Ausaf"),
(102, "Faraz"),
(103, "Charan");

CREATE TABLE course (
	id INT PRIMARY KEY,
    course VARCHAR(100)
);

INSERT INTO course (id, course)
VALUES
(101, "AI"),
(102, "Software Construction"),
(103, "Sociology");

# Inner Join

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

# Left Join

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id;

# Right Join

SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id;