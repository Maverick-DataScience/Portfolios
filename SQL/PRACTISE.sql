DROP TABLE student;
CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
	major VARCHAR(20) DEFAULT 'undecided'
);
#describe table
DESCRIBE student;

#edit table
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP gpa;

#adding data into database
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(name) VALUES('Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

# QUERY
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM student;	
UPDATE student 
SET major = 'Bio'
WHERE major ='Biology';

SELECT * FROM student;

SELECT * FROM student
ORDER BY major, student_id
LIMIT 2;

SELECT * FROM student
WHERE major = 'Chemistry' AND name ='Kate';

SELECT * FROM student
WHERE name IN ('Kate','Claire','Mike');


UPDATE student					
SET major = 'Bio'
WHERE major = 'BioChemistry';