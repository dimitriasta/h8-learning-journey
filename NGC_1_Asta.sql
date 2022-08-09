create table teachers (
  id INTeger primary key AUTOINCREMENt,
  first_name varchar(25),
  last_name varchar(50),
  school varchar(50),
  hire_date date,
  salary numeric
  );
  
insert into teachers (first_name,last_name,school,hire_date,salary)
values 	('Janet', 'Smith', 'MIT', '2011-10-30', 36200),
      	('Lee', 'Reynolds', 'MIT', '1993-05-22', 65000),
       	('Samuel', 'Cole', 'Cambridge University', '2005-08-01', 43500),
       	('Samantha', 'Bush', 'Cambridge University', '2011-10-30', 36200),
       	('Betty', 'Diaz', 'Cambridge University', '2005-08-30', 43500),
        ('Kathleen', 'Roush', 'MIT', '2010-10-22', 38500),
       	('James', 'Diaz', 'Harvard University', '2003-07-18', 61000),
       	('Zack', 'Smith', 'Harvard University', '2000-12-29', 55500),
       	('Luis', 'Gonzales', 'Standford University', '2002-12-01', 50000),
        ('Frank', 'Abbers', 'Standford University', '1999-01-30', 66000),
       	('Samuel', 'Abbers', 'Standford University', '2006-01-30', 32000),
       	('Jessica', 'Abbers', 'Standford University', '2005-01-30', 33000),
   	   	('Tom', 'Massi', 'Harvard University', '1999-09-09', 39500),
     	('Esteban', 'Brown', 'MIT', '2007-01-30', 36000),
       	('Carlos', 'Alonso', 'Standford University', '2001-01-30', 44000);
  
create table courses (
  id Integer primary key AUTOINCREMENT,
  name varchar(20),
  teachers_id int,
  total_students int
  );
  
insert into courses (name,teachers_id,total_students)
values	('Calculus', 2, 20),
       	('Physics', 2, 10),
        ('Calculus', 1, 30),
        ('Computer Science', 1, 20),
       	('Politic', 13, 15),
     	('Algebra', 2, 10),
     	('Algebra', 13, 30),
       	('Computer Science', 10, 35),
        ('Life Science', 11, 20),
      	('Chemistry', 9, 22),
      	('Chemistry', 8, 16),
       	('Calculus', 5, 19),
       	('Politic', 4, 17),
       	('Biology', 6, 22),
       	('Physics', 3, 29),
       	('Biology', 8, 28),
       	('Calculus', 12, 34),
       	('Physics', 13, 34),
      	('Biology', 14, 25),
       	('Calculus', 15, 20);
       
       
-- Case 1 : Who is the teacher with the highest salary for each university ?
select first_name,last_name,school,max(salary)
from teachers
group by (school);

-- Case 2 : Who is the teacher with the highest salary from Standford University ?
select first_name,last_name,max(salary)
from teachers
where school="Standford University";

-- Case 1 : Display all courses with teacher's identity
select courses.name,teachers.first_name,teachers.last_name, teachers.school,teachers.hire_date,teachers.salary
from courses 
join teachers
on courses.teachers_id=teachers.id
order by courses.name asc;

-- Case 2 : Display how many courses per universities
select teachers.school,count(courses.name)
from teachers
join courses
on teachers.id=courses.teachers_id
GROUP by teachers.school;

-- Case 3 : Display how many total_students per teachers
select teachers.first_name,teachers.last_name,sum(courses.total_students)
from teachers
join courses
on teachers.id=courses.teachers_id
group by teachers.id;

-- Case 4 : Display how many courses per teachers
select teachers.first_name,teachers.last_name,count(courses.id)
from teachers
join courses
on teachers.id=courses.teachers_id
GROUP By teachers_id;

-- Carilah dosen yang memiliki gaji tertinggi per masing-masing mata kuliah. 
-- Tampilkan semua atribut dosen dan semua atribut mata kuliahnya. 
-- Urutkan hasilnya berdasarkan nama  mata kuliahnya secara ascending(A-Z).

select teachers.id,teachers.first_name,teachers.last_name,teachers.school,teachers.hire_date, max(teachers.salary),courses.id,courses.name,courses.teachers_id,courses.total_students
from teachers
join courses
on teachers.id=courses.teachers_id
group by courses.name
order by courses.name asc;
