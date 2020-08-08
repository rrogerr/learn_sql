DROP TABLE student;

CREATE TABLE student(
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    minor VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

SELECT * FROM student;
SELECT COUNT(*) FROM student;
DESCRIBE student;

INSERT INTO student(name, major) VALUES('Rogelio', 'Physics');
INSERT INTO student(name, major) VALUES('Ryan', 'Biology');
INSERT INTO student(name) VALUES('Kate');
INSERT INTO student(name, major) VALUES('Ruth', 'English');
INSERT INTO student(name) VALUES('Richard');

INSERT INTO student(name, major) VALUES('Peter', 'English');

INSERT INTO student(name, major, minor) VALUES('Peter', 'Social Studies', 'Math');

UPDATE student
SET major = 'bio'
WHERE major = 'biology';

UPDATE student
SET minor = 'bio'
WHERE student_id = 3;

UPDATE student
SET minor = 'biophys'
WHERE major = 'Physics' OR major = 'bio';

DELETE FROM student
WHERE student_id = 5;

SELECT name 
FROM student
ORDER BY minor, name DESC;

SELECT *
FROM student
LIMIT 2;

SELECT *
FROM student
WHERE minor = 'biophys';

delete from student
where student_id = 4;

select minor, name
from student
order by minor;

ALTER TABLE student add gpa DECIMAL(3,2) DEFAULT 3.00;

UPDATE student
SET gpa = 4.00
where student_id = 1;

select *
from student
where gpa < 3.50;

select name
from student
where gpa < 3.50
order by name;

delete from student
where student_id = 2;

select *
from student
where gpa < 3.50
order by name; 

update student 
set gpa = 3.50
where name = 'Peter';

select *
from student
where gpa < 3.49
order by name desc;

INSERT INTO student(name, gpa) VALUES('Lola', 3.70);

select *
from student 
where gpa > 3.49
order by name desc;



ALTER TABLE student DROP COLUMN gpa;

ALTER TABLE student add gpa DECIMAL(3,2) DEFAULT 3.00;

UPDATE student
set gpa = 4.00
where name = 'Rogelio';

update student 
set gpa = 3.5
where name = 'Peter';

update student 
set gpa = 3.9
where name = 'Lola';

select *
from student
where gpa > 3.49
order by name;

insert into student(name, minor) values ('Orestes', 'Spanish');

select student_id
from student
where name = 'Orestes';

delete from student
where student_id = 9;

update student 
set gpa = gpa + 0.05
where gpa <> 4.00;

update student
set minor = 'finance'
where name in ('Lola', 'Guadalupe');

select * from student;