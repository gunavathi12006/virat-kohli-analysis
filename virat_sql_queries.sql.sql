drop table students;
create table students(
id int,
name varchar(50),
age int,
city varchar(50)
);
INSERT INTO Students VALUES (1,'Ravi',20,'Chennai');
INSERT INTO Students VALUES (2,'Priya',18,'Madurai');
INSERT INTO Students VALUES (3,'Arun',21,'Chennai');

SELECT * FROM Students;

SELECT * FROM Students
WHERE City='Chennai';

SELECT * FROM Students
ORDER BY Age ASC;

SELECT * FROM Students
ORDER BY Age DESC;
SET SQL_SAFE_UPDATES = 0;

UPDATE Students
SET Age = 22
WHERE Name = 'Arun';

SELECT * FROM Students;

DELETE FROM Students
WHERE ID=2;
drop table marks;
CREATE TABLE Marks (
    ID INT,
    Mark INT
    );
INSERT INTO Marks VALUES (1,90);
INSERT INTO Marks VALUES (3,85);

SELECT Students.Name, Marks.Mark
FROM Students
JOIN Marks
ON Students.ID = Marks.ID;

SELECT City, COUNT(*)
FROM Students
GROUP BY City;
