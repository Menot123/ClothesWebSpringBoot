CREATE TABLE `cart` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `userid` int(15) NOT NULL,
 `productid` int(15) NOT NULL,
 `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `quantity` int(11) NOT NULL,
 `price` double NOT NULL,
 PRIMARY KEY (`id`),
 KEY `userid` (`userid`),
 KEY `productid` (`productid`)
);
CREATE TABLE `products` (
 `id` int(15) NOT NULL AUTO_INCREMENT,
 `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `price` double NOT NULL,
 `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 PRIMARY KEY (`id`)
);
CREATE TABLE `users` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `email` varchar(30) NOT NULL,
 `password` varchar(60) NOT NULL,
 `name` varchar(30) NOT NULL,
 PRIMARY KEY (`id`)
);
CREATE TABLE `oder` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `ido` int(11) NOT NULL,
 `phone` varchar(15) NOT NULL,
 `location` varchar(200) NOT NULL,
 `price` varchar(20) NOT NULL,
 `status` varchar(20) NOT NULL DEFAULT 'chờ xác nhận',
 PRIMARY KEY (`id`)
);
CREATE TABLE `user_response` (
 `name` varchar(50) NOT NULL,
 `email` varchar(50) NOT NULL,
 `topic` varchar(100) NOT NULL,
 `content` text NOT NULL,
 `id` int(11) NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (`id`)
);

INSERT INTO `cart` (`id`, `userid`, `productid`, `image`, `name`, `quantity`, `price`) 
VALUES (NULL, '6', '2', 'images/2_aokieupeplum.jpg', 'ÁO KIỂU PEPLUM', '3', '139'), 
(NULL, '7', '1', 'images/1_quanshortlinen.jpg', 'QUẦN LINEN', '2', '199'), 
(NULL, '7', '2', 'images/2_aokieupeplum.jpg', 'ÁO KIỂU PEPLUM', '3', '139'), 
(NULL, '7', '3', 'images/4_nonvanh.jpg', 'NÓN VÀNH', '1', '88'), 
(NULL, '7', '4', 'images/5_aopolo.jpg', 'ÁO POLO ĐEN', '1', '399'), 
(NULL, '8', '9', 'images/12_aosomi.jpg', 'ÁO SƠ MI BÓNG', '1', '280'), 
(NULL, '8', '1', 'images/1_quanshortlinen.jpg', 'QUẦN LINEN', '1', '199'), 
(NULL, '8', '4', 'images/5_aopolo.jpg', 'ÁO POLO ĐEN', '1', '399'), 
(NULL, '7', '9', 'images/12_aosomi.jpg', 'ÁO SƠ MI BÓNG', '1', '280'), 
(NULL, '8', '3', 'images/4_nonvanh.jpg', 'NÓN VÀNH', '1', '88');

INSERT INTO `products` (`id`, `image`, `name`, `price`, `description`) 
VALUES (NULL, 'images/1_quanshortlinen.jpg', 'QUẦN LINEN', '199', 'Quần chất liệu linen dễ mặc. Phù hợp với mọi lứa tuổi'), 
(NULL, 'images/2_aokieupeplum.jpg', 'ÁO KIỂU PEPLUM', '139', 'Áo kiểu hiện đại, chất liệu thoải mái, dễ phối đồ'), 
(NULL, 'images/4_nonvanh.jpg', 'NÓN VÀNH', '88', 'Nón vành xì teen, phong cách trẻ trung, năng động'), 
(NULL, 'images/5_aopolo.jpg', 'ÁO POLO ĐEN', '399', 'Áo polo đen nam, thun cá sấu thoải mái, thanh lịch'), 
(NULL, 'images/7_aokhoaccoV.jpg', 'ÁO KHOÁC CỔ V', '850', 'Áo khoác phong cách mới, phối đồ dễ'), 
(NULL, 'images/8_somitaydai.jpg', 'SƠ MI TAY DÀI', '450', 'Sơ mi nam tay dài, đủ màu và đủ size'), 
(NULL, 'images/10_damchua.jpg', 'ĐẦM CHỮ A', '550', 'Đầm chữ A công sở, phù hợp nhiều độ tuổi'), 
(NULL, 'images/11_damdaixe.jpg', 'ĐẦM DÀI XẺ', '990', 'Đầm dài xẻ phiên bản giới hạn, đẹp và sang trọng'), 
(NULL, 'images/12_aosomi.jpg', 'ÁO SƠ MI BÓNG', '280', 'Áo sơ mi chất liệu phi bóng, chi tiết từng đường may'), 
(NULL, 'images/3_aothunngantay.jpg', 'ÁO THUN NGẮN TAY', '500', 'Đây là bộ trang phục thời thượng, hợp với mọi lứa tuổi'), 
(NULL, 'images/6_aokhoaccotton.jpg', 'ÁO KHOÁC COTTON', '650', 'Áo khoác chất liệu mỏng nhẹ, chống tia UV'), 
(NULL, 'images/9_quanshortlungthun.jpg', 'QUẦN SHORT LƯNG THUN', '250', 'Quần short chất liệu kaki dễ mặc, lưng thun thoải mái');

INSERT INTO `users` (`id`, `email`, `password`, `name`) 
VALUES (NULL, 'oooo@gmail.com', '$2a$10$f1fRVW4J03bdYrLIs.zkqu0rocSjrS9HKXKxMwMrop4DFihgwFEcC', 'Samsung O J'),
(NULL, 'asfsd@gmail.com', '$2a$10$f1fRVW4J03bdYrLIs.zkqu0rocSjrS9HKXKxMwMrop4DFihgwFEcC', 'Samsung Galaxy J'),
(NULL, 'asd@gmail.com', '$2a$10$f1fRVW4J03bdYrLIs.zkqu0rocSjrS9HKXKxMwMrop4DFihgwFEcC', 'Samsung Galaxy'),  
(NULL, 'aaaa@gmail.com', '$2a$10$0.fq/PNt.ZjK5S45GXOo0O9/2DLOgfpCwmOdWvNCntfUanxkO7t6C', 'Nguyen Tien Dat'), 
(NULL, 'asdf@gmail.com', '$2a$10$bRwjqfxKgNU52okpr0crKeKVMXj..omkozM3ZNMjvdzRaSavcyHSC', 'Nguyen Tien Dat'), 
(NULL, 'abcd@gmail.com', '$2a$10$7rSUB9x9UInR5hpv4saeEe0LsA2JPgn9a5KZ2lkpNQ19yh28xqDUq', 'Nguyen Van A'), 
(NULL, 'ngjyentiendat9a3@gmail.com', '$2a$10$7pi7L1q1kMW94s8Zl7okCetc2.T5dnWDAb8Lcsdals5JkhQVXGHZS', 'Nguyen Tien Dat'), 
(NULL, 'user8@gmail.com', '$2a$10$QEny/Z2cYtcGq.G4GwShee83SpDd9UlQuv0OS7urfrOE.eOz6z1wi', 'Người Dùng 8'), 
(NULL, 'admin@gmail.com', '123456789', 'Admin');

INSERT INTO `oder` (`id`, `ido`, `phone`, `location`, `price`, `status`) 
VALUES (NULL, '8', '0334353560', 'TDTU', '4.492.0', 'Chờ xác nhận');

INSERT INTO `user_response` (`name`, `email`, `topic`, `content`, `id`) 
VALUES ('Huỳnh Khánh Duy', 'khanhduy8769@gmail.com', 'thắc mắc', 'ddd', NULL), 
('Huỳnh Khánh Duy', 'khanhduy8768@gmail.com', 'Trả hàng', 'Hoàn tiền', NULL), 
('Nguyễn Văn A', 'nguyenvana@gmail.com', 'Đổi size', 'Đổi size', NULL);

