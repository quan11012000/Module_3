create database sale_management;
use sale_management;
create table products(
	p_id int auto_increment,
    p_name varchar(25) not null,
    p_price int not null,
    primary key(p_id)
);
create table customers(
	c_id int auto_increment,
    c_name varchar(25) not null,
    c_age tinyint not null,
    primary key(c_id)
);
create table orders(
	o_id int,
    c_id int not null,
    o_date date not null,
    o_total_price int,
    primary key(o_id),
    foreign key (c_id) references customers(c_id)
);
-- alter table orders change o_tatol_price o_total_price int;
create table order_details(
	o_id int not null,
    p_id int not null,
    od_qty int not null,
    foreign key(o_id) references orders(o_id),
    foreign key(p_id) references products(p_id)
);
INSERT INTO customers (c_name,c_age) VALUES
( 'Minh Quan', 10),
( 'Ngoc Oanh', 20),
( 'Hong Ha', 50);
INSERT INTO products ( p_name,p_price) VALUES
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);
INSERT INTO orders (o_id, c_id, o_date, o_total_price) VALUES
(1, 1, '2006-03-21', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);
INSERT INTO order_details (o_id, p_id, od_qty) VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(2, 5, 1),
(3, 1, 1);
select o_id,o_date,o_total_price from orders;
select c.*,o.o_id,od.p_id,p.p_name from customers c join orders o on c.c_id=o.c_id 
join order_details od on o.o_id=od.o_id join products p on od.p_id=p.p_id;
select c.c_name from customers c left join orders o  on c.c_id = o.c_id where o.c_id  is null;
select o.o_id,o.o_date,sum(od.od_qty*p.p_price) as o_total_price 
from orders o join order_details od
on o.o_id=od.o_id
join products p on od.p_id=p.p_id
group by o.o_id,o.o_date;