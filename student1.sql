Use college;

create table student1(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student1
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student1;

select distinct city from student1;

-- OPERATORS

select * from student1
where marks > 80;

select * from student1
where city = "Mumbai";

select * from student1
where marks > 80 and city = "Mumbai";

select * from student1
where marks between 80 and 90;

select * from student1
where city in ("Delhi", "mumbai");

select * from student1
where city not in ("Delhi", "mumbai");

-- LIMIT CLAUSE

select * from student1
limit 3;


-- ORDER BY CLAUSE

select * from student1
order by city ASC;

select * from student1
order by marks asc;

select * from student1
order by marks DESC
limit 3;

-- AGGREGATE FUNCTIONS

select max(marks) from student1;

select min(marks) from student1;

select AVG(marks) from student1;

select count(marks) from student1;

select sum(marks) from student1;

-- GROUPBY CLAUSE

select city from student1
group by city;

select city, count(rollno) from student1
group by city;

-- note -> if you are mentioning city and marks then you need to mention marks in group by clause else it will show error!'


select city, name, count(rollno) from student1
group by city, name;

select city, avg(marks) from student1
group by city;


-- Having clause

select count(name), city from student1
group by city
having max(marks) > 90;

select grade, city from student1
where grade = "A"
group by city
having max(marks) > 90
order by city;

-- Update 	command

-- need to turn off safe mode before updating 

Set sql_safe_updates=0;

Update student1
set grade = "O"
where grade = "A";



update student1
set marks = 83
where marks = 12;

Update student1
set grade = "B"
where marks between 80 and 90;

update student1
set marks = marks + 1;

update student1
set marks = 12
where rollno = 105;

select * from student1;

-- DELETE command

delete from student1
where marks <33;

-- Alter command is used to change the schema(column, data_type, constraints)

Alter table student1
add age Int;

Alter table student1
drop column age;

Alter table student1
Rename to student1;    -- rename table name

alter table student1
change column rollno stud_id Int;    -- rename column name

alter table student1
change column stud_id rollno Int;


-- modify col_name new_datatype new_constraint;

-- practice alter commands

select * from student1;

alter table student1
add column age int not null default 19; 

alter table student1
modify age varchar(2);

alter table student1
change age stu_age int;

insert into student1
(rollno, name, marks, stu_age)
values
(107, "Gargi", 90, 100);

alter table student1
drop column stu_age;

alter table student1
rename to stu;

alter table stu
rename to student1;

-- truncate - It delets data from table but keeps schema structure

truncate table student1;