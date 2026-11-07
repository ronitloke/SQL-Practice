select * from student1;

alter table student1
change name full_name varchar(50);

delete from student1
where marks < 80;

alter table student1
drop column grade;


