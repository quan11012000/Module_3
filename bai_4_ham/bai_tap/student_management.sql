create database student_managements_bai_4;
use student_managements_bai_4;
create table classes(
	class_id int,
    class_name varchar(10) not null,
    start_date date not null,
    class_status bit(1) not null,
    primary key(class_id)
);
create table students(
	student_id int auto_increment primary key,
    student_name varchar(50),
    address varchar(255),
    phone varchar(11),
    student_status bit(1),
    class_id int ,
    foreign key (class_id) references classes(class_id)
);
create table subjects(
	sub_id int ,
    sub_name varchar(20) not null,
    credit int not null,
    sub_status bit(1) not null,
    primary key(sub_id)
);
create table marks(
	mark_id int auto_increment primary key,
    sub_id int not null,
    student_id int not null,
    mark int not null,
    exam_times int,
    foreign key (sub_id) references subjects(sub_id),
    foreign key (student_id) references students(student_id)
);
INSERT INTO classes
VALUES (1, 'A1', '2008-12-20', 1),(2, 'A2', '2008-12-22', 1),(3, 'B3', current_date, 0);

INSERT INTO students (student_name, address, phone, student_status, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1),('Hoa', 'Hai phong','0912113112', 1, 1),('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subjects
VALUES (1, 'CF', 5, 1),
 (2, 'd', 6, 1),
 (3, 'HDJ', 5, 1),
 (4, 'RDBMS', 10, 1),(5, 's', 10, 1);
 
INSERT INTO marks (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
 (1, 2, 10, 2),
 (2, 1, 12, 1);
 -- thuc hanh
 select address,count(student_id) as count_student
 from students
 group by address;
 
 select s.student_id, s.student_name,avg(m.mark) as avg_mark
 from students s join marks m on s.student_id= m.student_id
 group by student_id,student_name;
 
 select s.student_id, s.student_name,avg(m.mark) as avg_mark
 from students s join marks m on s.student_id= m.student_id
 group by student_id,student_name having avg_mark>=10;
 
select s.student_id, s.student_name,avg(m.mark) as avg_mark
from students s join marks m on s.student_id= m.student_id
group by s.student_id,s.student_name
having avg_mark>= all (select avg(m.mark) from marks m group by m.student_id);
 
 -- bai tap --------------------------
 -- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select sub.* from subjects sub where sub.credit >= all (select max(sub.credit) from subjects sub) ;
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
 select sub.*,m.mark from subjects sub join marks m on sub.sub_id=m.sub_id where m.mark>= all (select max(m.mark) from marks m);
 -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
 select s.*,avg(m.mark) as avg_mark from students s join marks m on s.student_id = m.student_id
 group by s.student_id,s.student_name order by avg_mark desc;


 
 
 