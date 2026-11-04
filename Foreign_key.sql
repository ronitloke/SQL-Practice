USE college;

-- Foreign key 

-- Syntax

-- FOREIGN KEY (column1) REFERENCES parent_table (column1)

-- Cascading FK means changes happening in either parent or child table should make changes into another table as well.

create table dept(
ID Int primary key,
name varchar(50)
);

insert into dept
values
(101, "English"),
(102, "IT");

update dept
set id = 103
where id = 102;

create table teacher(
ID Int primary key,
name varchar(50),
dept_id INT,
foreign key (dept_id) REFERENCES dept(id)
on update cascade
on delete cascade
);

drop table teacher;

insert into teacher
values
(101, "Adam", 101),
(102, "Eve", 102);

select * from dept, teacher;

