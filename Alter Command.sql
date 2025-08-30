CREATE DATABASE alt;
USE alt;

-- ALTER Command
CREATE TABLE result (
	reg_id INT PRIMARY KEY,
    name VARCHAR(100),
    semester INT NOT NULL,
    marks FLOAT NOT NULL,
    grade VARCHAR(2),
    university VARCHAR(100)
);

INSERT INTO result
(reg_id, full_name, semester, marks, grade, university)
VALUES
(23979, "AUSAF", 4, 88, "A", "IU"),
(23122, "CHARAN", 2, 81, "B+", "IU"),
(23342, "MAAZ", 3, 51, "D", "IU"),
(23787, "SYED", 6, 30, "F", "IU");

SELECT * FROM result
ORDER BY full_name ASC;

ALTER TABLE result
ADD COLUMN age INT NOT NULL DEFAULT 21;

INSERT INTO result
VALUES
(65677, "ALI", 1, 74, "B", "IU", 22);

-- TRUNCATE Command

TRUNCATE TABLE result;

-- Practice Q's

ALTER TABLE result
CHANGE name full_name VARCHAR(100);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM result
WHERE marks < 80;

ALTER TABLE result
DROP COLUMN grade;

-- JOINS Command

