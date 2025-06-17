
use student_management;
SELECT id,name from student;
show tables;
alter table student
	add email varchar(100),
	add class_name varchar(10),
	add date_of_birth date;
create table teacher(
	id int,
    name varchar(50),
    date_of_birth date,
    expertise varchar(50),
    gender enum('nam','nu','khac')
    );

insert into teacher(id,name,date_of_birth,expertise,gender)
value ('001','Truong Tan Hai','1998-05-03','CNTT','nu');
create table class(
		id int,
        name varchar(50)
        );

