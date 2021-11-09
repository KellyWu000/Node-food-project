-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-09 14:30:53
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 7.4.21

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
  `Review_Description` varchar(255) NOT NULL COMMENT '客戶評價內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`Sid`, `Order_sid`, `Order_Name`, `Product_id`, `Order_Amount`, `Order_Total`, `Review_Level`, `Review_Description`) VALUES
(3, 'order20211108158', 'Nicolas', 'PW002', 1, 40, 0, ''),
(4, 'order202111081584', 'Nicolas', 'PW002', 1, 185, 0, ''),
(5, 'order202111081584', 'Nicolas', 'PT006', 1, 185, 0, ''),
(6, 'order20211108169', 'Nicolas', 'PW002', 1, 40, 0, ''),
(7, 'order202111081685', 'PW004', '1', 0, 0, 0, ''),
(8, 'order202111081685', 'PT003', '1', 0, 0, 0, ''),
(9, 'order202111081624', 'PW006', '1', 0, 0, 0, ''),
(10, 'order202111081614', 'Nicolas', 'PW007', 1, 50, 0, ''),
(11, 'order20211108166710', 'Nicolas', 'PT001', 1, 120, 0, ''),
(12, 'order20211108163710', '654564', 'PW003', 1, 255, 0, ''),
(13, 'order20211108163710', '654564', 'PT004', 1, 255, 0, ''),
(14, 'order20211108164310', 'Nicolas', 'PW001', 1, 80, 0, ''),
(15, 'order20211108185210', 'nicolas', 'PW001', 1, 80, 0, ''),
(16, 'order2021110818610', 'Nicolas', 'PM002', 5, 1125, 0, ''),
(17, 'order2021110818610', 'Nicolas', 'PM004', 9, 1125, 0, ''),
(18, 'order20211108232610', 'Nicolas', 'PT003', 1, 50, 0, ''),
(19, 'order20211109133610', 'Nicolas', 'PM007', 1, 420, 0, ''),
(20, 'order20211109133610', 'Nicolas', 'PW001', 4, 420, 0, ''),
(21, 'order20211109143810', '54654', 'PT004', 3, 830, 0, ''),
(22, 'order20211109143810', '54654', 'PT005', 1, 830, 0, ''),
(23, 'order20211109141310', 'Nicolas', 'PM010', 1, 180, 0, ''),
(24, 'order20211109141310', 'Nicolas', 'PT003', 1, 180, 0, '');

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
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
