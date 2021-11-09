-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-09 15:49:06
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `d-food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `Sid` int(11) NOT NULL,
  `Order_sid` varchar(255) NOT NULL COMMENT '訂單編號格式: order+timestamp',
  `Order_Name` varchar(255) NOT NULL COMMENT '訂購人姓名',
  `Product_id` varchar(255) NOT NULL COMMENT '商城的商品 id',
  `Order_Amount` int(11) NOT NULL COMMENT '商品的訂購數量',
  `Order_Total` int(11) NOT NULL COMMENT '商品小計',
  `Review_Level` int(1) DEFAULT 0 COMMENT '客戶評價等級',
  `Review_Description` varchar(255) DEFAULT ' ' COMMENT '客戶評價內容',
  `Review_Timestamp` datetime DEFAULT NULL COMMENT ' 客戶評價時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`Sid`, `Order_sid`, `Order_Name`, `Product_id`, `Order_Amount`, `Order_Total`, `Review_Level`, `Review_Description`, `Review_Timestamp`) VALUES
(0, 'order20211109203910', 'KK', 'PT002', 3, 105, 3, '123', '2021-11-09 21:06:18');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
