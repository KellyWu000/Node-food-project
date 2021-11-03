-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-02 11:56:02
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫: `d-food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `res_products`
--

CREATE TABLE `res_products` (
  `res_product_id` varchar(255) NOT NULL,
  `res_id` int(11) NOT NULL,
  `res_product_name` varchar(255) NOT NULL,
  `res_product_price` int(11) NOT NULL,
  `calories` int(11) NOT NULL,
  `protein` float NOT NULL,
  `adipose` float NOT NULL,
  `carbohydrate` float NOT NULL,
  `res_product_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `res_products`
--

INSERT INTO `res_products` (`res_product_id`, `res_id`, `res_product_name`, `res_product_price`, `calories`, `protein`, `adipose`, `carbohydrate`, `res_product_img`) VALUES
('rp001', 1, '板腱牛藜麥餐盒 ', 330, 786, 44.2, 18.2, 107.7, 'rp001.jpeg'),
('rp002', 1, '智利深海鮭魚藜麥餐盒 ', 320, 795, 45.4, 18.9, 107.4, 'rp002.jpeg'),
('rp003', 1, '竹筴魚排藜麥餐盒', 290, 674, 39.2, 8.3, 107.4, 'rp003.jpeg'),
('rp004', 1, '特選板腱牛＆松阪豬雙拼藜麥餐盒', 330, 754, 42.5, 27.5, 108.1, 'rp004.jpeg'),
('rp005', 1, '蒙特婁火烤雞胸藜麥餐盒', 300, 757, 55.8, 9.6, 108.4, 'rp005.jpeg'),
('rp006', 1, '低脂雞胸＆櫻桃鴨雙拼藜麥餐盒', 300, 739, 49.7, 20.9, 111.4, 'rp006.jpeg'),
('rp007', 2, '增肌減脂頌重肌', 160, 664, 55.8, 9.6, 108.4, 'rp007.jpeg'),
('rp008', 2, '美腿姊姊謝雞宴', 170, 709, 39.2, 8.3, 107.4, 'rp008.jpeg'),
('rp009', 2, '精實活力澎魚宴', 180, 683, 42.5, 9.6, 108.4, 'rp009.jpeg'),
('rp010', 2, '陽光燦爛牛以豪', 190, 754, 42.5, 27.5, 108.1, 'rp010.jpeg'),
('rp011', 2, '變身孔牛牛板腱', 200, 739, 49.7, 20.9, 111.4, 'rp011.jpeg'),
('rp012', 2, '青醬子魚女神同行', 210, 674, 39.2, 8.3, 107.4, 'rp012.jpeg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_products`
--
ALTER TABLE `res_products`
  ADD PRIMARY KEY (`res_product_id`),
  ADD KEY `res_sid` (`res_id`);
COMMIT;
