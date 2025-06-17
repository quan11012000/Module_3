create database sales_management;
use sales_management;
create table customers(
	c_id int ,
    c_name varchar(50) not null,
    c_age int not null,
    primary key(c_id)
);
create table orders(
	o_id int,
    c_id int,
    o_date date not null,
    o_total_price double not null,
    primary key(c_id),
    foreign key (o_id) references customers(c_id)
);
create table products(
	p_id int,
    p_name varchar(50) not null,
    p_price double not null,
    primary key(p_id)
);
create table order_details(
	o_id int,
    p_id int,
    od_qty varchar(50) not null,
    primary key(o_id,p_id),
    foreign key (o_id) references orders(o_id),
    foreign key (p_id) references products(p_id)
);
