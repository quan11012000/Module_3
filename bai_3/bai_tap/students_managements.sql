ncreate database student_managements;
use student_managements;
create table classes(
	class_id int,
    class_name varchar(10),
    start_date date,
    class_status bit(1)
);
create table students(
	student_id int auto_increment primary key,
    student_name varchar(50),
    address varchar(255),
    phone varchar(11),
    student_status bit(1),
    class_id int 
);
create table subjects(
	sub_id int ,
    sub_name varchar(20),
    credit int,
    sub_status bit(1)
);
create table marks(
	mark_id int auto_increment primary key,
    sub_id int,
    student_id int,
    mark int,
    exam_times int
);
INSERT INTO classes
VALUES (1, 'A1', '2008-12-20', 1),(2, 'A2', '2008-12-22', 1),(3, 'B3', current_date, 0);

INSERT INTO students (student_name, address, phone, student_status, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1),('Hoa', 'Hai phong','0912113112', 1, 1),('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subjects
VALUES (1, 'CF', 5, 1),
 (2, 'C', 6, 1),
 (3, 'HDJ', 5, 1),
 (4, 'RDBMS', 10, 1);
 
INSERT INTO marks (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
 (1, 2, 10, 2),
 (2, 1, 12, 1);
 select * from marks;

 select * from students where student_status=1;
 select * from subjects where credit<10;
  select * from students;
  select * from classes;
 select s.student_id,s.student_name,c.class_name from students s join classes c on s.class_id = c.class_id order by student_id;
 select s.student_id,s.student_name,sub.sub_name,m.mark 
 from students s join marks m on s.student_id = m.student_id join subjects sub on m.sub_id = sub.sub_id;
 select s.student_id,s.student_name,sub.sub_name,m.mark
 from students s join marks m on s.student_id = m.student_id join subjects sub on m.sub_id = sub.sub_id
 where sub_name = 'CF';
 -- bai tap 1---------------------------------------------------------
 
 select * from students where student_name like 'H%';
 
 select * from classes where month(start_date) =12;
 
 select * from subjects where credit>=3 and credit <=5;
 
 set sql_safe_updates=0;
 update students set class_id=2 where student_name='Hung';
 
 select s.student_name,sub.sub_name,m.mark 
 from students s join marks m on s.student_id = m.student_id
 join subjects sub on sub.sub_id=m.sub_id order by m.mark desc,s.student_name asc;
 
