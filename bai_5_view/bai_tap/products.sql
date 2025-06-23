create database demo;
use demo;
create table if not exists products(
	id int,
    product_code varchar(15) not null,
    product_name varchar(50) not null,
    product_price int not null,
    product_amount int not null,
    product_description text not null,
    product_status bit(1) not null,
    primary key(id)
);
INSERT INTO products (id, product_code, product_name, product_price, product_amount, product_description, product_status) VALUES
(1, 'P001', 'Laptop Dell XPS 13', 25000000, 10, 'Ultrabook cao cấp, nhẹ, màn hình 13 inch', 1),
(2, 'P002', 'MacBook Air M2', 28000000, 15, 'MacBook chip M2, hiệu năng cao, thời lượng pin tốt', 1),
(3, 'P003', 'iPhone 14 Pro Max', 32000000, 20, 'Điện thoại flagship của Apple', 1),
(4, 'P004', 'Samsung Galaxy S23', 23000000, 18, 'Flagship Android mạnh mẽ, camera ấn tượng', 1),
(5, 'P005', 'iPad Air 5', 18000000, 12, 'Máy tính bảng Apple với chip M1', 1),
(6, 'P006', 'AirPods Pro 2', 6000000, 25, 'Tai nghe không dây chống ồn của Apple', 1),
(7, 'P007', 'Logitech MX Master 3S', 2500000, 30, 'Chuột không dây cao cấp cho dân văn phòng', 1),
(8, 'P008', 'Asus ROG Strix G15', 32000000, 5, 'Laptop gaming cấu hình cao, màn hình 144Hz', 1),
(9, 'P009', 'Bàn phím cơ Keychron K8', 2200000, 20, 'Bàn phím cơ không dây, switch hot-swap', 1),
(10, 'P010', 'Màn hình LG UltraFine 4K', 12000000, 7, 'Màn hình 27 inch 4K, chuẩn màu cao', 1),
(11, 'P011', 'Kindle Paperwhite', 3500000, 17, 'Máy đọc sách chống nước, ánh sáng dễ chịu', 1),
(12, 'P012', 'Loa JBL Charge 5', 4000000, 10, 'Loa bluetooth chống nước, pin trâu', 1),
(13, 'P013', 'Ổ cứng SSD Samsung 1TB', 2800000, 40, 'Ổ cứng tốc độ cao chuẩn NVMe', 1),
(14, 'P014', 'Router WiFi TP-Link AX3000', 2100000, 22, 'Router hỗ trợ WiFi 6 tốc độ cao', 1),
(15, 'P015', 'Camera hành trình VietMap C65', 3900000, 8, 'Camera ghi hình 4K, tích hợp GPS', 1),
(16, 'P016', 'Máy in Canon LBP 2900', 2500000, 9, 'Máy in laser trắng đen văn phòng', 1),
(17, 'P017', 'Máy hút bụi Dyson V8', 9800000, 6, 'Máy hút bụi không dây, lực hút mạnh', 1),
(18, 'P018', 'Nồi chiên không dầu Philips HD9745', 4700000, 11, 'Dung tích 4L, công nghệ Rapid Air', 1),
(19, 'P019', 'Máy lọc không khí Sharp FP-J30E', 3600000, 14, 'Phù hợp phòng nhỏ, lọc bụi mịn PM2.5', 1),
(20, 'P020', 'Quạt thông minh Xiaomi Smart Fan 2', 2500000, 13, 'Điều khiển từ xa, điều chỉnh tốc độ linh hoạt', 1);


--

create index idx_product_code on products(product_code);
create index idx_name_price on products(product_name, product_price);
SELECT * FROM products WHERE product_name = 'MacBook Air M2' AND product_price = 28000000;
explain SELECT * FROM products WHERE product_code = 'P018';
-- ------------------------------------
create view view_product as
select product_code,product_name,product_price,product_status from products;
create or replace view view_product as 
select product_code,product_name,product_price,product_status from products
where product_amount >12;
alter view view_product as 
select product_code, product_name, product_price, product_status
FROM products
WHERE product_status = 1;

drop view view_product;
-- -------------------------------
delimiter //
create procedure get_all_product()
	begin
		select * from products;
    end //
delimiter ;
-- 
drop procedure add_product;
delimiter //

create procedure add_product(
	in id int,
    in product_code varchar(15),
    in product_name varchar(50),
    in product_price int,
    in product_amount int,
    in product_description text,
    in product_status bit(1)
)
begin
INSERT INTO products (id, product_code, product_name, product_price, product_amount, product_description, product_status) VALUES
(id, product_code, product_name, product_price, product_amount, product_description, product_status);
end //
delimiter ;
call add_product(
	22, 'P020', 'Quạt thông minh Xiaomi Smart Fan 2', 2500000, 13, 'Điều khiển từ xa, điều chỉnh tốc độ linh hoạt', 0
);
select * from products;
-- -----------------------------------
drop procedure update_product;
delimiter //
create procedure update_product(
in p_id int,
    in p_code varchar(15),
    in p_name varchar(50),
    in p_price int,
    in p_amount int,
    in p_description text,
    in p_status bit(1)
)
begin
	update products
    set product_code = p_code,
		product_name = p_name,
        product_price = p_price,
        product_amount = p_amount,
        product_description = p_description,
        product_status = p_status
	where id = p_id;
end //
delimiter ;
call update_product(5,
    'SP005-NEW',
    'Laptop Dell Vostro 14',
    18500000,
    30,
    'Phiên bản mới với RAM 16GB',
    0
);
-- -------------------------------------
delimiter //
create procedure delete_product_id(
	in p_id int,
    in p_code varchar(15),
    in p_name varchar(50),
    in p_price int,
    in p_amount int,
    in p_description text,
    in p_status bit(1)
		
)
begin
delete from products
where id=p_id;
end //
delimiter ; 
call delete_product_id(
5,
    'SP005-NEW',
    'Laptop Dell Vostro 14',
    18500000,
    30,
    'Phiên bản mới với RAM 16GB',
    0
    )
