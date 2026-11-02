create database PQR;

create table emp(
id int Primary key,
name varchar(50),
sal decimal(10,2));

insert into emp
(id,name,sal)
values
(1,"Adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

select * from emp;