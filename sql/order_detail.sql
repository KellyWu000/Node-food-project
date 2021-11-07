-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-04 09:37:18
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.3.31

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
  `Product_id` varchar(255) NOT NULL COMMENT '商城的商品 id',
  `Order_Amount` int(11) NOT NULL COMMENT '商品的訂購數量',
  `Promotion_Amount` int(11) DEFAULT NULL COMMENT '使用的會員點數',
  `Order_Total` int(11) NOT NULL COMMENT '商品小計',
  `Review_Level` int(1) DEFAULT 0 COMMENT '客戶評價等級',
  `Review_Description` varchar(255) NOT NULL COMMENT '客戶評價內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`Sid`, `Order_sid`, `Product_id`, `Order_Amount`, `Promotion_Amount`, `Order_Total`, `Review_Level`, `Review_Description`) VALUES
(1, 'order20211104151303', 'PT002', 7, 0, 245, 0, ''),
(2, 'order20211104151303', 'PM002', 1, 0, 99, 5, '123');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
