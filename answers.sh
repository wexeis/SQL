1. Get all the names of students in the database
select name from students


2. Get all the data of students above 30 years old
select * from students
WHERE age > 30


3. Get the names of the females who are 30 years old
select * 
FROM students
WHERE Age > 30 AND Gender = "F"


4. Get the number of Points of **Alex**
select Points
FROM students
WHERE name = "Alex"


5. Add yourself as a new student (your name, your age...)
INSERT INTO students (name, Age) VALUES("Samer", 24)

6. Increase the points of **Basma** because she solved a new exercise

UPDATE students
SET Points = 350
WHERE name = "Basma"


7. Decrease the points of **Alex** because hes late today

UPDATE students
SET Points = 150
WHERE name = "Alex"


Create a graduates table

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

10. Copy Layals data from students to graduates

INSERT INTO graduates(name, Age, Gender, points)
SELECT 
   name,Age,Gender,Points
FROM 
   students
WHERE
   name = 'Layal';


11. Add the graduation date previously mentioned to Layals record in graduates

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE name = 'Layal'


12. Remove Layals record from students

DELETE FROM students
WHERE name = 'Layal'

13. Commit ("Creating Table")

14. Produce a table that contains, for each employee, his/her name, company name, and company date.

SELECT employees.name, employees.Company, companies.date
FROM employees, companies
WHERE employees.Company = companies.name ;	


15.Find the name of **employees** that work in companies made before 2000.
SELECT employees.name, employees.Company, companies.date > 2000
FROM employees, companies
WHERE employees.Company = companies.name ;	


16. Find the name of company that has a graphic designer.

SELECT * 
FROM employees
WHERE Role = "Graphic Designer";

17. Commit ("Joins")

18. Find the person with the highest number of points in **students**

select name
from students
WHERE Points = (SELECT max(Points) FROM students)


19. Find the average of points in students

SELECT AVG(Points)
FROM students;


20. Find the number of students that have 500 points

SELECT count(*)
FROM students
where Points = 500;


21. Find the names of students that contains 's'

SELECT name
FROM students
where name like '%s%'


22. Find all students based on the decreasing order of their points

SELECT *
FROM students
ORDER BY points DESC

23. commit ("Count & Filter") 


