create database student_management;
use student_management;
create table students(
	student_id int ,
    student_name varchar(50) not null,
    student_age int not null,
    student_country varchar(150) not null,
    primary key (student_id)
);
create table classes(
	id int ,
    class_name varchar(50) not null,
    primary key (id)
);
create table teachers(
	teacher_id int,
    teacher_name varchar(50) not null,
    teacher_age int not null,
    teacher_country varchar(150) not null,
    primary key (teacher_id)
);
