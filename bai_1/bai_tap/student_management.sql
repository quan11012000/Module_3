create database student_management;
use student_management;
create table students(
	student_id int not null,
    student_name varchar(50) not null,
    student_age int not null,
    student_country varchar(150) not null
);
create table classes(
	id int not null ,
    class_name varchar(50) not null
);
create table teachers(
	teacher_id int not null,
    teacher_name varchar(50) not null,
    teacher_age int not null,
    teacher_country varchar(150) not null
);
