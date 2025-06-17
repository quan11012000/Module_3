
CREATE TABLE `customers` (
  `c_id` int NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_age` int NOT NULL,
  PRIMARY KEY (`c_id`)
);
CREATE TABLE `order_details` (
  `o_id` int NOT NULL,
  `p_id` int NOT NULL,
  `od_qty` varchar(50) NOT NULL,
  PRIMARY KEY (`o_id`,`p_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`)
) ;
CREATE TABLE `orders` (
  `o_id` int DEFAULT NULL,
  `c_id` int NOT NULL,
  `o_date` date NOT NULL,
  `o_total_price` double NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `o_id` (`o_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `customers` (`c_id`)
);
CREATE TABLE `products` (
  `p_id` int NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` double NOT NULL,
  PRIMARY KEY (`p_id`)
) 

-- Dump completed on 2025-06-17 15:08:19
