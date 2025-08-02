CREATE DATABASE del;
USE del;

-- UPDATE Command
CREATE TABLE result (
	reg_id INT PRIMARY KEY,
    name VARCHAR(100),
    semester INT NOT NULL,
    marks FLOAT NOT NULL,
    grade VARCHAR(2),
    university VARCHAR(100)
);

INSERT INTO result
(reg_id, name, semester, marks, grade, university)
VALUES
(23979, "AUSAF", 4, 88, "A", "IU"),
(23122, "CHARAN", 2, 81, "B+", "IU"),
(23342, "MAAZ", 3, 51, "D", "IU"),
(23787, "SYED", 6, 30, "F", "IU");

SET SQL_SAFE_UPDATES = 0;

UPDATE result
SET grade = "F"
WHERE grade = "D";

SELECT * FROM result;

-- DELETE Command

DELETE FROM result
WHERE marks < 60;


-- FOREIGN KEY

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept 
VALUES
(134, "CSD"),
(573, "DBA");

SELECT * FROM dept;

CREATE TABLE faculty (
	reg_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO faculty
VALUES
(9854, "WASEEM KHAN", 573),
(4236, "FAHAD NAJEEB", 134),
(6742, "SAIRA KHURRAM", 134),
(2451, "SALEEM SOUNDAHI", 573),
(1334, "ZUHA SOOMRO", 134),
(1245, "MAHNOOR NISAR", 573);

SELECT * FROM faculty;